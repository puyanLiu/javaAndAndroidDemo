.class public Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "ContactSelectPageActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;
.implements Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "fragment_container_layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;",
        "Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
        ">;",
        "Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;"
    }
.end annotation


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "type"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final TAG_CONFIRM_ACCOUNT:Ljava/lang/String; = "TAG_CONFIRM_ACCOUNT"

.field public static final TAG_MULTI_INPUT_ACCOUNT:Ljava/lang/String; = "TAG_MULTI_INPUT_ACCOUNT"

.field public static final TAG_MULTI_SELCET:Ljava/lang/String; = "TAG_MULTI_SELCET"

.field public static final TAG_RECENT_FRIEND_SELECT:Ljava/lang/String; = "TAG_RECENT_FRIEND_SELECT"

.field public static final TAG_SINGLE_FRIEND_SELECT:Ljava/lang/String; = "TAG_SINGLE_FRIEND_SELECT"

.field public static final TAG_SINGLE_PHONEBOOK_SELECT:Ljava/lang/String; = "TAG_SINGLE_PHONEBOOK_SELECT"

.field public static final TYPE_GROUP_MULTI:Ljava/lang/String; = "group_multi"

.field public static final TYPE_GROUP_SINGLE:Ljava/lang/String; = "group_single"

.field public static final TYPE_MULTI:Ljava/lang/String; = "multi"

.field public static final TYPE_MULTI_INPUT_ACCOUNT:Ljava/lang/String; = "multi_input_account"

.field public static final TYPE_PHONE_BOOK:Ljava/lang/String; = "phone_book"

.field public static final TYPE_PHONE_SNS:Ljava/lang/String; = "phone_sns"

.field public static final TYPE_SINGLE:Ljava/lang/String; = "single"

.field public static final TYPE_SINGLE_RECENT:Ljava/lang/String; = "single_recent"


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "fragmentContainer"
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;

.field private c:Landroid/support/v4/app/FragmentManager;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/os/Bundle;

.field private k:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 83
    const-string/jumbo v0, "single"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->e:Z

    .line 85
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->f:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->h:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->i:Ljava/util/HashMap;

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->k:F

    .line 36
    return-void
.end method

.method public static getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "type"

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :goto_0
    if-nez v1, :cond_1

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u9009\u4eba\u53c2\u6570\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    .line 196
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :cond_0
    move-object v1, v0

    goto :goto_0

    .line 133
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->j:Landroid/os/Bundle;

    .line 134
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->c:Landroid/support/v4/app/FragmentManager;

    .line 136
    const-string/jumbo v2, "modal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->f:Z

    .line 137
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 140
    const-string/jumbo v3, "multi"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;-><init>()V

    .line 183
    :cond_2
    :goto_2
    if-eqz v0, :cond_d

    .line 184
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 185
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 186
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->e:Z

    if-nez v0, :cond_3

    .line 187
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 194
    :cond_3
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 195
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 194
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->g:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    goto :goto_1

    .line 142
    :cond_4
    const-string/jumbo v3, "multi_input_account"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 144
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;-><init>()V

    .line 145
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_2

    .line 147
    :cond_5
    const-string/jumbo v3, "group_multi"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 148
    const-string/jumbo v0, "group_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u7fa4\u591a\u9009\u4eba\u672a\u6307\u5b9a\u7fa4id"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    goto/16 :goto_1

    .line 154
    :cond_6
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;-><init>()V

    .line 155
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_2

    .line 157
    :cond_7
    const-string/jumbo v3, "group_single"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 158
    const-string/jumbo v0, "group_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u7fa4\u5355\u9009\u4eba\u672a\u6307\u5b9a\u7fa4id"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    goto/16 :goto_1

    .line 164
    :cond_8
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;-><init>()V

    .line 165
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto/16 :goto_2

    .line 167
    :cond_9
    const-string/jumbo v3, "single"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 168
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment_;-><init>()V

    goto/16 :goto_2

    .line 169
    :cond_a
    const-string/jumbo v3, "single_recent"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 170
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;-><init>()V

    .line 171
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto/16 :goto_2

    .line 173
    :cond_b
    const-string/jumbo v3, "phone_book"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 175
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;-><init>()V

    .line 176
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto/16 :goto_2

    .line 178
    :cond_c
    const-string/jumbo v3, "phone_sns"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 179
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;-><init>()V

    goto/16 :goto_2

    .line 190
    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u9009\u4eba\u672a\u6307\u5b9a\u64cd\u4f5c\u7c7b\u578b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    goto/16 :goto_3
.end method

.method public addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 3

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->e:Z

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    .line 244
    const-string/jumbo v1, "TAG_RECENT_FRIEND_SELECT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;-><init>()V

    .line 246
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    .line 270
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->e:Z

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 274
    if-eqz p2, :cond_3

    .line 275
    invoke-virtual {v0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 277
    :cond_3
    sget v2, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-virtual {v1, v2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 278
    if-eqz p3, :cond_4

    .line 279
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    :cond_4
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 248
    :cond_5
    const-string/jumbo v1, "TAG_SINGLE_FRIEND_SELECT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment_;-><init>()V

    .line 250
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_1

    .line 252
    :cond_6
    const-string/jumbo v1, "TAG_MULTI_INPUT_ACCOUNT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 253
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;-><init>()V

    .line 254
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_1

    .line 256
    :cond_7
    const-string/jumbo v1, "TAG_CONFIRM_ACCOUNT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 257
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;-><init>()V

    .line 258
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_1

    .line 260
    :cond_8
    const-string/jumbo v1, "TAG_MULTI_SELCET"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 261
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;-><init>()V

    .line 262
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_1

    .line 264
    :cond_9
    const-string/jumbo v1, "TAG_SINGLE_PHONEBOOK_SELECT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;-><init>()V

    .line 267
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->setOpCallback(Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;)V

    goto :goto_1
.end method

.method public backFragment()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->c:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->k:F

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 310
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->k:F

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->k:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 314
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getmParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public getmRecentMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public getmSelectMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 208
    :cond_0
    const/4 v0, -0x1

    .line 209
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->f:Z

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "push_down_out"

    const-string/jumbo v2, "anim"

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    .line 213
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->f:Z

    if-eqz v1, :cond_2

    .line 214
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->overridePendingTransition(II)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->g:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_3

    .line 219
    const/4 v1, 0x2

    invoke-interface {v0, v1, v4, v4, v4}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->g:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    .line 223
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "onCreate ContactSelectPageActivity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->e:Z

    .line 201
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "onDestroy ContactSelectPageActivity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 203
    return-void
.end method

.method public selectItem(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->g:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    const/4 v1, 0x1

    invoke-interface {v0, v1, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->finish()V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->g:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    .line 236
    :cond_0
    return-void
.end method

.method public setSelectedFragment(Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;

    .line 297
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
