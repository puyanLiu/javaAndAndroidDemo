.class public Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;
.super Ljava/lang/Object;
.source "SearchHotWordCache.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private searchHotWordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSearchHotWordInfo()Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;->searchHotWordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    return-object v0
.end method

.method public setSearchHotWordInfo(Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alipay/android/phone/o2o/o2ocommon/model/SearchHotWordCache;->searchHotWordInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;

    .line 20
    return-void
.end method
