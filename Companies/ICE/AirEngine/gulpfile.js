var gulp = require('gulp');
var sass = require('gulp-sass');
var concat = require('gulp-concat');
var util = require('gulp-util');
 
gulp.task('sass:theme', function () {
	gulp.src('./Ovs.Hotel.Ui/apps/assets/brands/' + (util.env.theme ? util.env.theme : 'sears') + '/scss/*.scss')
		.pipe(sass().on('error', sass.logError))
		.pipe(sass({outputStyle: 'compressed'}))
		.pipe(concat("style.css"))
		.pipe(gulp.dest('./Ovs.Hotel.Ui/apps/assets/brands/' + (util.env.theme ? util.env.theme : 'sears') + '/css'))
});

gulp.task('sass:default', function () {
	gulp.src('./Ovs.Hotel.Ui/apps/assets/scss/*.scss')
		.pipe(sass().on('error', sass.logError))
		.pipe(sass({outputStyle: 'compressed'}))
		.pipe(concat("default.css"))
		.pipe(gulp.dest('./Ovs.Hotel.Ui/apps/assets/css'))
}); 

gulp.task('theme', function () {
	gulp.watch(['./Ovs.Hotel.Ui/apps/assets/scss/*', './Ovs.Hotel.Ui/apps/assets/brands/' + (util.env.theme ? util.env.theme : 'sears') + '/scss/*.scss'], ['sass:theme']);
	//gulp.watch('./assets/scss-bootstrap/*.scss', ['scss-bootstrap'], browserSync.reload);
});

gulp.task('default', function() {
	gulp.watch(['./Ovs.Hotel.Ui/apps/assets/scss/*'], ['sass:default']);
  // place code for your default task here
});
