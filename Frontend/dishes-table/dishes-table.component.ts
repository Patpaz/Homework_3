import { Component, OnInit } from '@angular/core';
import { DishService } from '../_services/dish.service';

@Component({
  selector: 'app-dishes-table',
  templateUrl: './dishes-table.component.html',
  styleUrls: ['./dishes-table.component.scss']
})
export class DishesTableComponent implements OnInit {
  dishes = [
    {
      dish_id: 1,
      name: "Lomo Saltado",
      price: 15.5
    },
    {
      dish_id: 2,
      name: "Causa",
      price: 13.0
    }
  ]

  constructor(
    private dishService: DishService
  ) { }

  ngOnInit(): void {
    this.dishService.getDishes().subscribe((data) => {
      this.dishes = data;
  })
}

}
