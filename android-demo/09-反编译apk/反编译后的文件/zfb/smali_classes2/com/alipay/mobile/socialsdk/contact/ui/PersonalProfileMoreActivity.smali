.class public Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;
.super Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;
.source "PersonalProfileMoreActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_personal_profile_more"
.end annotation


# static fields
.field public static final KEY_ALIACCOUNT:Ljava/lang/String; = "key_aliaccout"

.field public static final KEY_FROM_NEW_FRIEND_LIST:Ljava/lang/String; = "KEY_FROM_NEW_FRIEND_LIST"

.field public static final KEY_NEW_FRIEND:Ljava/lang/String; = "KEY_NEW_FRIEND"


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_area"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_sign"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_origin"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_area"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_sign"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_origin"
    .end annotation
.end field

.field private h:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private j:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

.field private k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private l:Z

.field private final m:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ay;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ay;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->m:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 26
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    const-string/jumbo v0, "by_scan"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string/jumbo v0, "by_group"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, "by_family"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    :goto_2
    if-eqz v1, :cond_6

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->g:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_3
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->e:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    goto :goto_4

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    goto :goto_5

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->f:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 142
    goto :goto_2

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->g:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 150
    :cond_7
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->l:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-eqz v0, :cond_8

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->sourceDec:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->source:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 150
    :goto_6
    if-eqz v0, :cond_9

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->g:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    move v0, v2

    .line 152
    goto :goto_6

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->g:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method


# virtual methods
.method protected final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    if-nez v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    const-string/jumbo v0, "key_aliaccout"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "mContactAccount == null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->h:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "content://contactsdb/ali_account/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->k:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "register:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->h:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->m:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/az;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/az;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->b()V

    goto/16 :goto_0

    .line 82
    :cond_1
    :try_start_1
    const-string/jumbo v0, "KEY_FROM_NEW_FRIEND_LIST"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->l:Z

    .line 83
    const-string/jumbo v0, "KEY_NEW_FRIEND"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->j:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected loadFriendInfo()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 167
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->i:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->refreshUi()V

    .line 173
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->h:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->m:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 185
    return-void
.end method

.method protected refreshUi()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity;->b()V

    .line 114
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
