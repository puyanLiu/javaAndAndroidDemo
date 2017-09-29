.class public Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/QueryTransToYebRecordResult;
.super Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/PageResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bottomNotice:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/SimpleHrefNotice;

.field public btnScheme:Ljava/lang/String;

.field public btnViewTxt:Ljava/lang/String;

.field public contextViewTxtWhenRecordListIsEmpty:Ljava/lang/String;

.field public openYebBtnViewTxt:Ljava/lang/String;

.field public openyebBtnScheme:Ljava/lang/String;

.field public recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/TransToYebRecordModel;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public total:Lcom/alipay/mwealthprod/biz/service/gw/model/familyaccounts/TransToYebTotalModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/PageResult;-><init>()V

    return-void
.end method
