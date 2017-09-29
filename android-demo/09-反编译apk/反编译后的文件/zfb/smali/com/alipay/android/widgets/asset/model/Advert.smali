.class public Lcom/alipay/android/widgets/asset/model/Advert;
.super Ljava/lang/Object;
.source "Advert.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/Advert;->appId:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/alipay/android/widgets/asset/model/Advert;->content:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/Advert;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/model/Advert;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/Advert;->appId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/model/Advert;->content:Ljava/lang/String;

    .line 30
    return-void
.end method
