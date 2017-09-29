.class public Lcom/alipay/security/mobile/module/commonutils/Dbg;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "SecurityComponent"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugStatus(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SecurityComponent"

    invoke-static {v0, p0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
