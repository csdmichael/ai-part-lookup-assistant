export interface Assistant {
  id: number;
  title: string;
  reference: string;
  status: 'new' | 'in-progress' | 'complete';
  priority: 'low' | 'normal' | 'high';
}
