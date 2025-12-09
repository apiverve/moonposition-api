declare module '@apiverve/moonposition' {
  export interface moonpositionOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface moonpositionResponse {
    status: string;
    error: string | null;
    data: MoonPositionData;
    code?: number;
  }


  interface MoonPositionData {
      date:        string;
      coordinates: Coordinates;
      moon:        Moon;
  }
  
  interface Coordinates {
      latitude:  number;
      longitude: number;
  }
  
  interface Moon {
      altitude: number;
      azimuth:  number;
      distance: number;
  }

  export default class moonpositionWrapper {
    constructor(options: moonpositionOptions);

    execute(callback: (error: any, data: moonpositionResponse | null) => void): Promise<moonpositionResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: moonpositionResponse | null) => void): Promise<moonpositionResponse>;
    execute(query?: Record<string, any>): Promise<moonpositionResponse>;
  }
}
