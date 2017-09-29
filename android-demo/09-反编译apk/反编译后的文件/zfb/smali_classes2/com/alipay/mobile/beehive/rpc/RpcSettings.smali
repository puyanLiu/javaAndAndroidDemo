.class public Lcom/alipay/mobile/beehive/rpc/RpcSettings;
.super Ljava/lang/Object;
.source "RpcSettings.java"


# static fields
.field public static supportShowType:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/beehive/rpc/RpcSettings;->supportShowType:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
