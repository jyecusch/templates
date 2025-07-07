import { grpc,  StorageClient, Bucket } from "@veetwo/client";

export class NitricClient {
  private storageClient: StorageClient;
  
  public image: Bucket;
  

  constructor(address: string = "localhost:50051", credentials: grpc.ChannelCredentials = grpc.credentials.createInsecure()) {
    this.storageClient = new StorageClient(address, credentials);
    
    this.image = new Bucket(this.storageClient, "image");
    
  }
} 