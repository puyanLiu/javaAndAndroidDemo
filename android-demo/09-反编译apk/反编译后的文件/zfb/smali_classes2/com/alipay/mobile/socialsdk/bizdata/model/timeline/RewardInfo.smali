.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;
.source "RewardInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x74c63ff9f1893c9fL


# instance fields
.field rwAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V

    .line 21
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->amount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;->rwAmount:Ljava/lang/String;

    .line 22
    return-void
.end method
