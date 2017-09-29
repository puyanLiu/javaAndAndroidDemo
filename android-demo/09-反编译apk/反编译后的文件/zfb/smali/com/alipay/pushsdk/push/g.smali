.class public final Lcom/alipay/pushsdk/push/g;
.super Ljava/lang/Object;
.source "PacketTypeAndIDFilter.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/connection/c;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/g;->a:Lorg/json/JSONObject;

    .line 22
    iput v1, p0, Lcom/alipay/pushsdk/push/g;->b:I

    .line 24
    iput v1, p0, Lcom/alipay/pushsdk/push/g;->c:I

    .line 25
    iput v1, p0, Lcom/alipay/pushsdk/push/g;->d:I

    .line 33
    iput p1, p0, Lcom/alipay/pushsdk/push/g;->b:I

    .line 34
    iput p2, p0, Lcom/alipay/pushsdk/push/g;->c:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/pushsdk/push/g;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Lcom/alipay/pushsdk/push/e/a;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 40
    const-string/jumbo v1, "packet is null"

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->h()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-static {v2}, Lcom/alipay/pushsdk/util/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "packet data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string/jumbo v3, "commandType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/alipay/pushsdk/push/g;->d:I

    iget v4, p0, Lcom/alipay/pushsdk/push/g;->c:I

    if-ne v4, v3, :cond_0

    iput-object v2, p0, Lcom/alipay/pushsdk/push/g;->a:Lorg/json/JSONObject;

    move v0, v1

    goto :goto_0

    .line 47
    :cond_2
    iget v3, p0, Lcom/alipay/pushsdk/push/g;->b:I

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->a()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lcom/alipay/pushsdk/util/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/alipay/pushsdk/push/g;->a:Lorg/json/JSONObject;

    move v0, v1

    goto :goto_0
.end method
