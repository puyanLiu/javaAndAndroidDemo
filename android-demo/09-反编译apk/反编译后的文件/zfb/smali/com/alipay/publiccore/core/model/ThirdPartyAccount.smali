.class public Lcom/alipay/publiccore/core/model/ThirdPartyAccount;
.super Lcom/alipay/publiccore/common/service/facade/model/ToString;
.source "ThirdPartyAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public agreementId:Ljava/lang/String;

.field public authTime:Ljava/util/Date;

.field public displayName:Ljava/lang/String;

.field public extValue:Ljava/lang/String;

.field public last4CardNo:Ljava/lang/String;

.field public memoName:Ljava/lang/String;

.field public publicId:Ljava/lang/String;

.field public realName:Ljava/lang/String;

.field public showName:Ljava/lang/String;

.field public showNameDescribe:Ljava/lang/String;

.field public thirdAccountId:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/ToString;-><init>()V

    return-void
.end method
