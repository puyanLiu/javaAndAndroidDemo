.class public Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;
.super Ljava/lang/Object;
.source "SelectChatRoomActivity.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public lastModifyTime:Ljava/lang/String;

.field public memberCount:Ljava/lang/String;

.field public members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->members:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public static parseGroupInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;)Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;
    .locals 2

    .prologue
    .line 114
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;-><init>()V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    .line 115
    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->name:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->memberCount:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->id:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->icon:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->members:Ljava/util/ArrayList;

    .line 122
    return-object v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 136
    if-ne p0, p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_3
    check-cast p1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;

    .line 143
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toGroupInfo()Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->icon:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/SelectChatRoomActivity$CustomGroupInfo;->members:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    .line 131
    return-object v0
.end method
