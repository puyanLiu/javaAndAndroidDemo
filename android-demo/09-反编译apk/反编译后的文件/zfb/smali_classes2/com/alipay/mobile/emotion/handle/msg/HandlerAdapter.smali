.class public abstract Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.super Ljava/lang/Object;
.source "HandlerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/handle/msg/HandlerInterface;


# instance fields
.field private final category:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-nez p1, :cond_0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string/jumbo v1, "invalid CommandHandler category"

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_3
    check-cast p1, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;

    .line 47
    iget-object v2, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 28
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 30
    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 32
    return v0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public abstract onMessage(Ljava/util/Map;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method
