.class public Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;
.super Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;
.source "ReplyInfo.java"


# static fields
.field private static final serialVersionUID:J = -0x3691630d38ba356cL


# instance fields
.field public commentMsg:Ljava/lang/String;

.field public toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V

    .line 22
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;->commentMsg:Ljava/lang/String;

    .line 29
    return-void
.end method
