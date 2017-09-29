.class public Lcom/alipay/mobileapp/biz/rpc/taobao/bind/facade/BindTaobaoReq;
.super Ljava/lang/Object;
.source "BindTaobaoReq.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public externParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public productVersion:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;

.field public umidToken:Ljava/lang/String;

.field public userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
