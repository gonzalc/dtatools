# 💿Data Transfer Agent Tools (dtatools)

"All data transfers (e.g., low to high, high to low) must be tracked to include date, originator 
making request, filename, file format, classification level, source and destination systems, 
and approver." (Department of Defense (DoD), [Joint Special Access Program (SAP) Implementation Guide (JSIG) 2016](https://www.dcsa.mil/portals/91/documents/ctp/nao/JSIG_2016April11_Final_(53Rev4).pdf))  

## [Getting Started](https://github.com/gonzalc/dtatools/blob/main/SETUP.md)  

## Description / Scenarios
This project will...
  * assist data transfer agents (DTA)  
    * retrieve the file information specified within the JSIG.  
    * (optional) retrieve size, count of folders/files, and hash  
    * send results to database and populate data transfer sheets (PDF)  
  * assist media control agents (MCA)
    * query database  
    * display results on website  
  * assist database administrators (DBA)
    * export data from source database and append rows to destination table
    * CCB required to identify what to do with source data (e.g,. retain?)

## Dependencies
* Modules (Required)  
  * [dbatools](https://github.com/dataplat/dbatools)  
  * [importexcel](https://github.com/dfinke/ImportExcel)  
  * [BurntToast](https://www.powershellgallery.com/packages/BurntToast/0.8.5)  
  * [Selenium](https://www.powershellgallery.com/packages/Selenium/3.0.1)  
* Modules (Optional)  
  * [Pester](https://github.com/pester/Pester)  

* Libraries (Required)
  * [alphafs](http://alphafs.alphaleonis.com/)  
  * [itext7](https://itextpdf.com/)  
  
## Reference:  
* JSIG AC-4  

## Links:  
1. [offering-jsig](https://learn.microsoft.com/en-us/azure/compliance/offerings/offering-jsig)  
