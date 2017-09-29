.class Lcom/amap/api/location/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/amap/api/location/d;


# direct methods
.method constructor <init>(Lcom/amap/api/location/d;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/location/g;->a:Lcom/amap/api/location/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/location/g;->a:Lcom/amap/api/location/d;

    iget-object v0, v0, Lcom/amap/api/location/d;->a:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/location/g;->a:Lcom/amap/api/location/d;

    invoke-static {v1, p1, v0}, Lcom/amap/api/location/d;->a(Lcom/amap/api/location/d;ILandroid/location/GpsStatus;)V

    return-void
.end method
