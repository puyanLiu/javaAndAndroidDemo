.class public Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;
.super Ljava/lang/Object;
.source "H5HardwarePolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldDisableHardwareAccelerate()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    const-string/jumbo v0, "samsung"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 18
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v3, v5, :cond_6

    .line 19
    const-string/jumbo v3, "SM-N9108V"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "SM-N9100"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_0
    move v3, v1

    .line 20
    :goto_1
    const-string/jumbo v5, "LGE"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 21
    const-string/jumbo v6, "g3"

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 23
    const-string/jumbo v7, "Meizu"

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 24
    const-string/jumbo v8, "MX4"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 25
    if-eqz v4, :cond_1

    if-nez v0, :cond_4

    :cond_1
    if-eqz v4, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    if-nez v8, :cond_4

    :cond_3
    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 30
    :cond_4
    :goto_2
    return v1

    :cond_5
    move v0, v2

    .line 16
    goto :goto_0

    :cond_6
    move v3, v2

    .line 19
    goto :goto_1

    :cond_7
    move v1, v2

    .line 30
    goto :goto_2
.end method
