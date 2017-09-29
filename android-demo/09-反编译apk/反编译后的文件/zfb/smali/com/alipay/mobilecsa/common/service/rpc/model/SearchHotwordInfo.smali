.class public Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotwordInfo;
.super Ljava/lang/Object;
.source "SearchHotwordInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public recommendId:Ljava/lang/String;

.field public searchHotwords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotword;",
            ">;"
        }
    .end annotation
.end field

.field public searchText:Lcom/alipay/mobilecsa/common/service/rpc/model/SearchHotword;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
