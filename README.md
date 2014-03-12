ml-test Grails mailinglist plugin 
=======================

### https://github.com/vahidhedayati/mailinglist/

This project is created to show how to put together the above grails plugin.


Once you have grails up and running (This was done in 2.3.4 with ggts version 3.5.0.M1)

All you will need to test using this project is grails 2.3.4

simple run

	git clone https://github.com/vahidhedayati/ml-test.git
	
Then
 
	cd ml-test
	# and with JAVA_HOME and GRAILS_HOME set in environment config 
	# with your console able to find grails 2.3.4 binary run

run
	grails run-app
	
You should now be able to test the plugin 


To recreate this project, the following changes were made to a default grails project :

Under :

#### views/layouts/main.gsp

	<g:javascript library="application"/>
	
	
	<g:javascript library="jquery"/>
	<g:javascript library="jquery-ui"/>
				
	<r:layoutResources />

So above r:layoutResources and below Application are two new java script calls to jquery and jquery-ui





#### conf/BuildConfig.groovy

	compile ':mailinglist:0.1'
	
#### conf/UrlMappings.groovy

	"/" {
			controller = "MailingList"
			action = "index"
		 }
		// Commented out default and put in above
        //"/"(view:"/index")
			
#### conf/Config.groovy

		ckeditor {
			//config = "/js/myckconfig.js"
				skipAllowedItemsCheck = false
			defaultFileBrowser = "ofm"
			upload {
				//basedir = "/uploads/"
				
				baseurl="${grails.baseURL}"+'/uploads/'
				basedir = "${externalUploadPath}"
					overwrite = false
					link {
						browser = true
						upload = false
						allowed = []
						denied = ['html', 'htm', 'php', 'php2', 'php3', 'php4', 'php5',
								  'phtml', 'pwml', 'inc', 'asp', 'aspx', 'ascx', 'jsp',
								  'cfm', 'cfc', 'pl', 'bat', 'exe', 'com', 'dll', 'vbs', 'js', 'reg',
								  'cgi', 'htaccess', 'asis', 'sh', 'shtml', 'shtm', 'phtm']
					}
					image {
						browser = true
						upload = true
						allowed = ['jpg', 'gif', 'jpeg', 'png']
						denied = []
					}
					flash {
						browser = false
						upload = false
						allowed = ['swf']
						denied = []
					}
			}
		}
		
		jqueryDateTimePicker {
			format {
				java {
					datetime = "dd/MM/yyyy HH.mm"
					date = "dd/MM/yyyy"
				}
				picker {
					date = "'dd/mm/yy'"
					time = "'H.mm'"
				}
			}
		}
		
		grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
			xml: ['text/xml', 'application/xml'],
			text: 'text-plain',
			js: 'text/javascript',
			rss: 'application/rss+xml',
			atom: 'application/atom+xml',
			css: 'text/css',
			csv: 'text/csv',
			pdf: 'application/pdf',
			rtf: 'application/rtf',
			excel: 'application/vnd.ms-excel',
			ods: 'application/vnd.oasis.opendocument.spreadsheet',
			all: '*/*',
			json: ['application/json','text/json'],
			form: 'application/x-www-form-urlencoded',
			multipartForm: 'multipart/form-data'
		  ]
							
			


Now with that all in place

	grails refresh-dependencies

Followed by

	grails mlsetup org.example.com 5
	
 
 mlsetup has kicked in the installer for the mailinglist plugin, put all of the controllers domains etc within org.example.com on this local project and set up 5 Quartz Schedule Jobs.
 
 
 The output of me running above is as follows:
 
	 Using numeric 5 to create amount of jobs
	.Creating job 0 job Name: grails-app/jobs/org.example.com/ScheduleEmail0Job.groovy
	Generating EmailCheckerService Schedule Pool ScheduleEmail0Job
	Creating job 1 job Name: grails-app/jobs/org.example.com/ScheduleEmail1Job.groovy
	Generating EmailCheckerService Schedule Pool ScheduleEmail1Job
	Creating job 2 job Name: grails-app/jobs/org.example.com/ScheduleEmail2Job.groovy
	Generating EmailCheckerService Schedule Pool ScheduleEmail2Job
	Creating job 3 job Name: grails-app/jobs/org.example.com/ScheduleEmail3Job.groovy
	Generating EmailCheckerService Schedule Pool ScheduleEmail3Job
	Creating job 4 job Name: grails-app/jobs/org.example.com/ScheduleEmail4Job.groovy
	Generating EmailCheckerService Schedule Pool ScheduleEmail4Job
	.Creating views folder: mailingListTemplates
	Creating views folder: mailingListAttachments
	Creating views folder: layouts
	Creating views folder: mailingListSchedule
	Creating views folder: mailingListCategories
	Creating views folder: mailingListModal
	Creating views folder: mailingListEmail
	Creating views folder: mailingListUploader
	Creating views folder: mailingListSenders
	..Creating css folder: mailingList
	Creating css folder: bootstrap
	.Creating domain classes within your project: grails-app/domain/org/example/com
	.Creating controllers within your project: grails-app/controllers/org/example/com
	.Creating Taglib within your project: grails-app/taglib/org/example/com
	.Creating Services within your project: grails-app/services/org/example/com
	.Finished generating classes.
	Config.groovy configurations updates required - please refer to documentation.

 
 
 now it is ready for use.
 
 	grails run-app
 	
 The url is now available http://localhost:8080/ml-test	
 
 For further documentation please visit the main plugin page here https://github.com/vahidhedayati/mailinglist

 