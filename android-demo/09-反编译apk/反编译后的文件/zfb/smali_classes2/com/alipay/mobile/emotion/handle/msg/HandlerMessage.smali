.class public Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;
.super Ljava/lang/Object;
.source "HandlerMessage.java"


# instance fields
.field private command:Ljava/lang/String;

.field private extraBundle:Landroid/os/Bundle;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->command:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->parameters:Ljava/util/Map;

    .line 31
    iput-object p3, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->extraBundle:Landroid/os/Bundle;

    .line 32
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->extraBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;->parameters:Ljava/util/Map;

    return-object v0
.end method
