.class public Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;
.super Ljava/lang/Object;
.source "FriendsChooseWidget.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->a:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->b:Ljava/lang/String;

    .line 229
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 249
    if-ne p1, p0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    .line 252
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    if-nez v0, :cond_1

    .line 253
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_1
    check-cast p1, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;

    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->b:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->a:Ljava/lang/String;

    .line 237
    return-void
.end method
