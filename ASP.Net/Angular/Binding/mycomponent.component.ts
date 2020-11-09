import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-mycomponent',
  templateUrl: './mycomponent.component.html',
  styleUrls: ['./mycomponent.component.css']
})
export class MycomponentComponent implements OnInit {
  text: string = "component example created";
  uniform: Number[] = [13, 56, 67, 34];
  name: string = "";
  public isdisable = "true";
  hasError = "true";
  public titleStyle={
    color: "blue",
    fontStyle: "italic"
   }
  constructor() { }

  ngOnInit(): void {
  }

}
