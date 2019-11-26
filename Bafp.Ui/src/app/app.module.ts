import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { ReactiveFormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { TopBarComponent } from './top-bar/top-bar.component';
import { CitiesListComponent } from './cities-list/cities-list.component';
import { CityCoursesListComponent } from './city-courses-list/city-courses-list.component';

@NgModule({
  imports: [
    HttpClientModule,
    BrowserModule,
    ReactiveFormsModule,
    RouterModule.forRoot([
      { path: '', component: CitiesListComponent },
      { path: 'city/:cityName', component: CityCoursesListComponent },
    ])
  ],
  declarations: [
    AppComponent,
    TopBarComponent,
    CitiesListComponent,
    CityCoursesListComponent
  ],
  bootstrap: [ AppComponent ]
})
export class AppModule { }


/*
Copyright Google LLC. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at http://angular.io/license
*/