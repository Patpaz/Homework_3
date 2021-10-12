import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class DishService {

  constructor(
    private http: HttpClient
  ) { }
  getDishes() {
    return this.http.get<any>('http://localhost:3000/menu');
  }
}
