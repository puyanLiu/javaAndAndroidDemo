.class Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field static instance:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;-><init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
