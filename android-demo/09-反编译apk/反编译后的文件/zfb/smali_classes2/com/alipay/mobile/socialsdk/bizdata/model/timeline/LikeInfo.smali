.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;
.source "LikeInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x33404c1d308d8eb1L


# instance fields
.field desc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V

    .line 17
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;->desc:Ljava/lang/String;

    .line 19
    return-void
.end method
