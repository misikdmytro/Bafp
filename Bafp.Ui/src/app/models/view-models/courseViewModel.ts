import { Constants } from "src/app/constants";

export class CourseViewModel {
  public cityId: number;
  public cityName: string;
  public price: number;
  public count: number;

  constructor(public config: { cityId: number, cityName: string, price: number, count: number }) {
    this.cityId = config.cityId;
    this.cityName = config.cityName;
    this.price = config.price;
    this.count = config.count;
  }

  public get total(): number { return this.price * this.count; }
  public get totalStudents(): number { return Constants.averageStudents * this.total; }
}
