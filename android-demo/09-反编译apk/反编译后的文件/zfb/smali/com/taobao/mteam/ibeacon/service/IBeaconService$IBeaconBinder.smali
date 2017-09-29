.class public Lcom/taobao/mteam/ibeacon/service/IBeaconService$IBeaconBinder;
.super Landroid/os/Binder;


# instance fields
.field final synthetic this$0:Lcom/taobao/mteam/ibeacon/service/IBeaconService;


# direct methods
.method public constructor <init>(Lcom/taobao/mteam/ibeacon/service/IBeaconService;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService$IBeaconBinder;->this$0:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/taobao/mteam/ibeacon/service/IBeaconService;
    .locals 2

    sget-boolean v0, Lcom/taobao/mteam/ibeacon/manager/IBeaconManager;->e:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "IBeaconService"

    const-string/jumbo v1, "getService of IBeaconBinder called"

    invoke-static {v0, v1}, Lcom/taobao/mteam/MLogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/taobao/mteam/ibeacon/service/IBeaconService$IBeaconBinder;->this$0:Lcom/taobao/mteam/ibeacon/service/IBeaconService;

    return-object v0
.end method
