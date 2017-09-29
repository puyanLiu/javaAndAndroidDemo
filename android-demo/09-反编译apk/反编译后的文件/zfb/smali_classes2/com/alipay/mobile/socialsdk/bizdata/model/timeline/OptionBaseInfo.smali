.class public abstract Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;
.super Ljava/lang/Object;
.source "OptionBaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22288e6499231aefL


# instance fields
.field public clientOptionId:Ljava/lang/String;

.field public createTime:J

.field public feedId:Ljava/lang/String;

.field public fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field public lastModifyTime:J

.field public optionId:Ljava/lang/String;

.field public state:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->optionId:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    .line 41
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->createTime:J

    .line 42
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->lastModifyTime:J

    .line 43
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->feedId:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 47
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->type:I

    .line 48
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->state:I

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 53
    if-ne p0, p1, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 58
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    check-cast p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 75
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/OptionBaseInfo;->clientOptionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
