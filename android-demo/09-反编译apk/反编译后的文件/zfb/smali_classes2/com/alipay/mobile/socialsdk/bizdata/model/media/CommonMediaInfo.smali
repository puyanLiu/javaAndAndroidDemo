.class public abstract Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;
.super Ljava/lang/Object;
.source "CommonMediaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;->appInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;

    return-object v0
.end method

.method public setAppInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/CommonMediaInfo;->appInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/media/AppInfo;

    .line 17
    return-void
.end method
