all:
	dartanalyzer public/app.dart
	dart2js --out=public/app.js public/app.dart
