.class final Lcom/uc/webview/export/utility/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/extension/ILocationManager;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/SetupTask;

.field private b:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/utility/SetupTask;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 969
    iput-object p1, p0, Lcom/uc/webview/export/utility/c;->a:Lcom/uc/webview/export/utility/SetupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    const-string/jumbo v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    .line 972
    return-void
.end method


# virtual methods
.method public final removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 999
    :cond_0
    return-void
.end method

.method public final requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 6

    .prologue
    .line 979
    iget-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 983
    :cond_0
    return-void
.end method

.method public final requestLocationUpdatesWithUrl(Ljava/lang/String;JFLandroid/location/LocationListener;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 989
    iget-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/uc/webview/export/utility/c;->b:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 992
    :cond_0
    return-void
.end method
