
## Lab 4:  How to consume an Azure Machine Learning Web service 

When deployed as a Web service, Azure Machine Learning experiments provide a REST API and JSON formatted messages that can be consumed by a wide range of devices and platforms. The Azure Machine Learning portal provides code that can be used to call the Web service in R, C#, and Python.


## How to build a console app that consume an Azure ML web servie

1. From the Azure ML studio, Click on web services tab.
2. Click on the deployed web service that you would like to consume from the console app.
3. Click on Test preview link in REQUEST/RESPONSE Default Endpoint section.
4. Click on Consume tab, you will find sample code to consume Azure ML in C#, Python or R.
5. Open Visual Studio 2015, Create a console application.
6. Update the main method with the code for consuming the selected web service.

```C#

// This code requires the Nuget package Microsoft.AspNet.WebApi.Client to be installed.
// Instructions for doing this in Visual Studio:
// Tools -> Nuget Package Manager -> Package Manager Console
// Install-Package Microsoft.AspNet.WebApi.Client

using System;
using System.Collections.Generic;
using System.IO;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace CallRequestResponseService
{
    class Program
    {
        static void Main(string[] args)
        {
            InvokeRequestResponseService().Wait();
        }

        static async Task InvokeRequestResponseService()
        {
            using (var client = new HttpClient())
            {
                var scoreRequest = new
                {
                    Inputs = new Dictionary<string, List<Dictionary<string, string>>> () {
                        {
                            "input1",
                            new List<Dictionary<string, string>>(){new Dictionary<string, string>(){
                                            {
                                                "age", "39"
                                            },
                                            {
                                                "workclass", "State-gov"
                                            },
                                            {
                                                "fnlwgt", "77516"
                                            },
                                            {
                                                "education", "Bachelors"
                                            },
                                            {
                                                "education-num", "13"
                                            },
                                            {
                                                "marital-status", "Never-married"
                                            },
                                            {
                                                "occupation", "Adm-clerical"
                                            },
                                            {
                                                "relationship", "Not-in-family"
                                            },
                                            {
                                                "race", "White"
                                            },
                                            {
                                                "sex", "Male"
                                            },
                                            {
                                                "capital-gain", "2174"
                                            },
                                            {
                                                "capital-loss", "0"
                                            },
                                            {
                                                "hours-per-week", "40"
                                            },
                                            {
                                                "native-country", "United-States"
                                            },
                                            {
                                                "income", "<=50K"
                                            },
                                }
                            }
                        },
                    },
                    GlobalParameters = new Dictionary<string, string>() {
                    }
                };

                const string apiKey = "abc123"; // Replace this with the API key for the web service
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue( "Bearer", apiKey);
                client.BaseAddress = new Uri("https://ussouthcentral.services.azureml.net/workspaces/WORKSPACEID/services/WEBSERVICEID/execute?api-version=2.0&format=swagger");

                // WARNING: The 'await' statement below can result in a deadlock
                // if you are calling this code from the UI thread of an ASP.Net application.
                // One way to address this would be to call ConfigureAwait(false)
                // so that the execution does not attempt to resume on the original context.
                // For instance, replace code such as:
                //      result = await DoSomeTask()
                // with the following:
                //      result = await DoSomeTask().ConfigureAwait(false)

                HttpResponseMessage response = await client.PostAsJsonAsync("", scoreRequest);

                if (response.IsSuccessStatusCode)
                {
                    string result = await response.Content.ReadAsStringAsync();
                    Console.WriteLine("Result: {0}", result);
                }
                else
                {
                    Console.WriteLine(string.Format("The request failed with status code: {0}", response.StatusCode));

                    // Print the headers - they include the requert ID and the timestamp,
                    // which are useful for debugging the failure
                    Console.WriteLine(response.Headers.ToString());

                    string responseContent = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(responseContent);
                }
            }
        }
    }
}




```

