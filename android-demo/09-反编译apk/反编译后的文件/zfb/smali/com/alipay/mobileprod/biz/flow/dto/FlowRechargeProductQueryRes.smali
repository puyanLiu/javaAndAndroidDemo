.class public Lcom/alipay/mobileprod/biz/flow/dto/FlowRechargeProductQueryRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public areaName:Ljava/lang/String;

.field public catName:Ljava/lang/String;

.field public faces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/flow/vo/FlowFaceVO;",
            ">;"
        }
    .end annotation
.end field

.field public mobile:Ljava/lang/String;

.field public showCatname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
