.class Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;
.super Ljava/lang/Object;
.source "H5ShakePlugin.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v8, 0x41980000    # 19.0f

    .line 97
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 98
    aget v3, v2, v0

    .line 99
    aget v4, v2, v1

    .line 100
    const/4 v5, 0x2

    aget v2, v2, v5

    .line 101
    const-string/jumbo v5, "H5ShakePlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onSensorChanged x "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " y "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " z "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_1

    .line 104
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v8

    if-gtz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_1

    .line 103
    :goto_0
    if-nez v0, :cond_2

    .line 115
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    goto :goto_1
.end method
