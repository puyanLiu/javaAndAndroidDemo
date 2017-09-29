.class public Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;
.super Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;
.source "ChatRoomSelectPeopleActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "fragment_container_layout"
.end annotation


# static fields
.field public static final EXTRA_BIZ_TYPE:Ljava/lang/String; = "biz_type"

.field public static final EXTRA_HANDLE_TYPE:Ljava/lang/String; = "extra_handle_type"

.field public static final EXTRA_MAX_SELECT_COUNT:Ljava/lang/String; = "multiMax"

.field public static final EXTRA_MAX_SELECT_TEXT:Ljava/lang/String; = "multiMaxText"

.field public static final EXTRA_ORIGIN_USER_ACCOUNT:Ljava/lang/String; = "extra_origin_user_account"

.field public static final EXTRA_ORIGIN_USER_ID:Ljava/lang/String; = "extra_origin_user"

.field public static final EXTRA_TARGET_APP_ID:Ljava/lang/String; = "target_app_id"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_WITH_ME:Ljava/lang/String; = "with_me"

.field public static final REQUEST_CODE_SELECT_CHAT_ROOM:I = 0x1

.field public static final TYPE_CHAT_ADD_PEOPLE_CREATE_CHAT_ROOM:I = 0x3

.field public static final TYPE_CREATE_CHAT_ROOM_THEN_JUMP_TO_APP:I = 0x0

.field public static final TYPE_NEW_DEFAULT_CHATROOM:I = 0x2

.field public static final TYPE_SELECT_PEOPLE_THEN_JUMP_TO_APP:I = 0x1

.field public static final TYPE_SHARE_SELECT_CHAT:I = 0x4


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "fragmentContainer"
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Bundle;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private m:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->m:F

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private b()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    return-object v1

    .line 270
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 271
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    const-string/jumbo v1, ""

    .line 280
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "?userIds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_0
    return-object v0

    .line 281
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "scheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "scheme"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->g:Landroid/os/Bundle;

    const-string/jumbo v2, "scheme"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "selectPeople"

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->g:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    :cond_1
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 507
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/k;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;)V

    .line 513
    const-wide/16 v2, 0x1f4

    .line 507
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/16 v5, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 140
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 142
    const-class v3, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 140
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 143
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 144
    if-nez v3, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->finish()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "biz_type"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->i:Ljava/lang/String;

    .line 153
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 154
    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 153
    const-string/jumbo v4, "SOCIAL_GROUP"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 157
    const-string/jumbo v4, "create_limit"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    .line 158
    const-string/jumbo v4, "skip_alert"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 165
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    if-gtz v4, :cond_2

    .line 166
    iput v5, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    .line 168
    :cond_2
    if-eqz v0, :cond_3

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    .line 171
    :cond_3
    const-string/jumbo v0, "extra_handle_type"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    .line 172
    const-string/jumbo v0, "extra_origin_user"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->g:Landroid/os/Bundle;

    .line 174
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "target_app_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->h:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "multiMaxText"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->j:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->k:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    const-string/jumbo v0, "20000167"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->h:Ljava/lang/String;

    .line 180
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    if-lez v0, :cond_5

    .line 181
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->select_create_group_default_max_tips:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->j:Ljava/lang/String;

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    .line 185
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->i:Ljava/lang/String;

    .line 187
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    invoke-direct {v4}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;-><init>()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "extra_handle_type"

    iget v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "multiMax"

    iget v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "multiMaxText"

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->j:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "extra_origin_user"

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "selectionOverMaxTipType"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "title"

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "\u9009\u62e9\u8054\u7cfb\u4eba"

    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "withMe"

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "with_me"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;->setArguments(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->fragmentContainer:I

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v0

    iput v5, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->c:I

    :cond_8
    move v0, v2

    goto/16 :goto_1

    .line 187
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->k:Ljava/lang/String;

    goto :goto_2
.end method

.method public confirmBuildNewChatroom(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 211
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    if-ne v1, v5, :cond_3

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_1

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->d()V

    goto :goto_0

    .line 213
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 214
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    :goto_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "tUserId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "tUserType"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000167"

    invoke-interface {v0, v6, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e()V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v3}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    const-string/jumbo v0, "1"

    iput-object v0, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5, v6, v6, v2}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->finish()V

    goto/16 :goto_0

    .line 227
    :cond_8
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 232
    :pswitch_0
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->prepare_create_chatroom:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->showProgressDialog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->sendChatRoomRpcRequest(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->d()V

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/high16 v2, 0x42480000    # 50.0f

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->m:F

    .line 490
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 493
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->m:F

    sub-float/2addr v1, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->m:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->a:Lcom/alipay/mobile/commonui/widget/APFrameLayout;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 498
    :cond_2
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public handleChatRoomCreateResult(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V
    .locals 10
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v8, 0xa

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->dismissProgressDialog()V

    .line 342
    iget-boolean v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->success:Z

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v1, v1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupImg:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    if-ne v1, v6, :cond_2

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "tUserId"

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "tUserType"

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e()V

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    if-ne v1, v6, :cond_1

    invoke-interface {v0, v9, v5, v5, v5}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 343
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object p2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupImg:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    const-string/jumbo v3, "2"

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget v3, v3, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupCount:I

    iput v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupMemberCount:I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v9, v5, v5, v1}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->finish()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "groupId"

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->g:Landroid/os/Bundle;

    invoke-interface {v0, v5, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000166"

    invoke-interface {v0, v1, v2, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->finish()V

    goto :goto_0

    .line 344
    :cond_4
    iget v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultCode:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_8

    .line 346
    const-string/jumbo v1, ""

    .line 347
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move v2, v3

    .line 348
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_6

    .line 360
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra_origin_user_account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 361
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra_origin_user_account"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_b

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\u7b49"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 368
    :goto_2
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->title_alert_create_group_fail:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->create_group_unfriend_format:I

    .line 368
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    .line 369
    aput-object v0, v4, v3

    .line 368
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 370
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/i;

    invoke-direct {v4, p0, v6}, Lcom/alipay/mobile/socialsdk/contact/ui/i;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;Ljava/util/Map;)V

    .line 382
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, p0

    move-object v6, v5

    .line 368
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getUserId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 353
    if-ge v2, v4, :cond_c

    .line 354
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->displayName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    add-int/lit8 v1, v4, -0x1

    if-eq v2, v1, :cond_7

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u3001"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    :cond_7
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 383
    :cond_8
    iget v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultCode:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_9

    .line 385
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->title_alert_create_group_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultDesc:Ljava/lang/String;

    .line 386
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 387
    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/j;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/j;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;)V

    .line 393
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, p0

    move-object v6, v5

    .line 385
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 394
    :cond_9
    iget v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultCode:I

    const/16 v1, 0xa2e

    if-ne v0, v1, :cond_a

    .line 396
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->title_alert_create_group_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultDesc:Ljava/lang/String;

    .line 397
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object v1, p0

    move-object v6, v5

    move-object v7, v5

    .line 396
    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 398
    :cond_a
    iget v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultCode:I

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_1

    .line 400
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto/16 :goto_2

    :cond_c
    move-object v0, v1

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 462
    if-ne p1, v5, :cond_1

    .line 463
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 464
    if-eqz p3, :cond_1

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getNextOperationCallback()Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;

    move-result-object v2

    .line 466
    const-string/jumbo v0, "groupInfo"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 467
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 469
    new-instance v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 470
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 471
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    :goto_0
    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    .line 472
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 473
    const-string/jumbo v1, "2"

    iput-object v1, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userType:Ljava/lang/String;

    .line 474
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupMemberCount:I

    .line 475
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-interface {v2, v5, v6, v6, v3}, Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;->handleNextOperation(ILandroid/app/Activity;Landroid/view/View;Ljava/util/List;)Z

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->finish()V

    .line 480
    :cond_1
    return-void

    .line 471
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->d:Z

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->l:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearCallback()V

    .line 456
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->onDestroy()V

    .line 457
    return-void
.end method

.method public sendChatRoomRpcRequest(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 313
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 311
    const-class v1, Lcom/alipay/mobilechat/biz/group/rpc/SelectCreateRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/group/rpc/SelectCreateRpcService;

    .line 315
    new-instance v1, Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;

    invoke-direct {v1}, Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;-><init>()V

    .line 316
    iput-object p1, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;->userIds:Ljava/util/List;

    .line 317
    iput-object p2, v1, Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;->bizType:Ljava/lang/String;

    .line 318
    invoke-interface {v0, v1}, Lcom/alipay/mobilechat/biz/group/rpc/SelectCreateRpcService;->create(Lcom/alipay/mobilechat/biz/group/rpc/request/SelectCreateReq;)Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;

    move-result-object v1

    .line 319
    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->dismissProgressDialog()V

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string/jumbo v0, "\u7fa4\u804a"

    .line 324
    iget-boolean v2, v1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->success:Z

    if-eqz v2, :cond_1

    .line 325
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 326
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;->group:Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;-><init>(Ljava/lang/String;Lcom/alipay/mobilechat/biz/group/rpc/response/GroupVO;Ljava/util/List;)V

    .line 327
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->composeGroupNameFromMember(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Ljava/util/List;)V

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->refreshGroupInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Z)Z

    .line 329
    iget-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    .line 331
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->handleChatRoomCreateResult(Lcom/alipay/mobilechat/biz/group/rpc/response/GroupCreateResult;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity;->dismissProgressDialog()V

    .line 334
    throw v0
.end method

.method public setSelectedFragment(Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;)V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/personalbase/ui/SocialBaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
