.class public Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.source "TextMediaInfo.java"


# instance fields
.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;->m:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public setM(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/TextMediaInfo;->m:Ljava/lang/String;

    .line 24
    return-void
.end method
