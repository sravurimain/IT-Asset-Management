# IT Asset Management & Inventory Tracking

This project automates IT asset collection using PowerShell and visualizes the data through an Excel dashboard. It simulates a lightweight, scalable asset management system appropriate for IT support and system administration scenarios.

## Features

- PowerShell script to collect system information including device name, model, serial number, operating system, and username
- CSV export for central logging and tracking
- Excel dashboard with summary metrics, filters, and charts
- Includes mock data to demonstrate realistic asset tracking and visualization

## Project Structure

IT-Asset-Management/
├── scripts/
│ └── export_assets.ps1 # PowerShell script for asset collection
├── dashboard/
│ └── asset_dashboard.xlsx # Excel dashboard with charts and metrics
├── data/
│ └── assets.csv # Sample asset data
└── README.md

## Technologies Used

- PowerShell (WMI queries, scripting)
- Excel (dashboard, pivot tables, charts)
- CSV for structured data export
- Git and GitHub for version control

## Dashboard Overview

The Excel dashboard includes:

- Total asset count
- Unique device models
- Assets added in the last 30 days
- Manufacturer breakdown
- Visualizations: bar chart for manufacturer counts, optional pie chart for OS breakdown

## How to Use

1. Run `export_assets.ps1` on a Windows machine to collect system information
2. The script generates or appends to `assets.csv` under the `data/` directory
3. Open the Excel file under `dashboard/` and review the asset data
4. Replace the sample data or expand the script to run on multiple systems or via scheduled jobs

## Author

Saiaashish Ravuri  
B.S. Computer Science, Cal Poly Pomona  
Certifications: CompTIA A+, Google Cybersecurity  
GitHub: [sravurimain](https://github.com/sravurimain)  
LinkedIn: [linkedin.com/in/saiaashish-ravuri-81a71a26a](https://www.linkedin.com/in/saiaashish-ravuri-81a71a26a/)

## License

This project is intended for educational and demonstration purposes.
