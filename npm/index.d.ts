declare module '@apiverve/moonposition' {
  export interface moonpositionOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface moonpositionResponse {
    status: string;
    error: string | null;
    data: MoonPositionData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MoonPositionData {
      date:        null | string;
      time:        null | string;
      coordinates: Coordinates;
      moon:        Moon;
  }
  
  interface Coordinates {
      latitude:  number | null;
      longitude: number | null;
  }
  
  interface Moon {
      altitude: number | null;
      azimuth:  number | null;
      distance: number | null;
  }

  export default class moonpositionWrapper {
    constructor(options: moonpositionOptions);

    execute(callback: (error: any, data: moonpositionResponse | null) => void): Promise<moonpositionResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: moonpositionResponse | null) => void): Promise<moonpositionResponse>;
    execute(query?: Record<string, any>): Promise<moonpositionResponse>;
  }
}
