.class public Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "ShareEntryActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_share_enty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/framework/app/ui/BaseActivity;",
        "Landroid/text/TextWatcher;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final EXTRA_BUSINESS_TYPE:Ljava/lang/String; = "shareType"

.field public static final EXTRA_DIRECT_SHARE:Ljava/lang/String; = "directShare"

.field public static final EXTRA_ENTRY_TITLE:Ljava/lang/String; = "shareTitle"

.field public static final EXTRA_INNER_FORWARD_MESSAGES:Ljava/lang/String; = "forwardMessages"

.field public static final EXTRA_OUT_SHARE_CONTENT:Ljava/lang/String; = "shareContent"

.field public static final FLAG_TYPE_BUSINESS_SHARE:I = 0x11

.field public static final FLAG_TYPE_ENTER_CHAT_WITH_BUNDLE:I = 0x100

.field public static final FLAG_TYPE_FORWARD_MESSAGE:I = 0x110

.field public static final FLAG_TYPE_INNER_APP_SHARE:I = 0x111

.field public static final FLAG_TYPE_INNER_FORWARD:I = 0x1

.field public static final FLAG_TYPE_OUT_SHARE:I = 0x10

.field public static final FLAG_TYPE_SELECT_PEOPLE:I = 0x101


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "recent_contacts"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchBar"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "empty_content"
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:I

.field private h:Z

.field private i:Landroid/database/Cursor;

.field private j:Landroid/os/Handler;

.field private k:Lcom/alipay/mobile/personalbase/model/ShareModel;

.field private l:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

.field private m:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

.field private n:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

.field private o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

.field private p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

.field private q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private r:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

.field private final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/lang/Runnable;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 143
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->h:Z

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->s:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->t:Ljava/util/HashMap;

    .line 157
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/f;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->u:Ljava/lang/Runnable;

    .line 167
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->v:Z

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->m:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    .line 741
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    .line 779
    :goto_0
    return-void

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "localShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "localShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 754
    new-instance v2, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Resp;

    invoke-direct {v2}, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Resp;-><init>()V

    .line 755
    iput p1, v2, Lcom/alipay/mobile/personalbase/share/BaseResp;->errCode:I

    .line 756
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/alipay/mobile/personalbase/share/BaseResp;->errStr:Ljava/lang/String;

    .line 757
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 758
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 759
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/personalbase/share/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 760
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 761
    sget-object v2, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    sget-object v2, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 764
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 765
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    const-string/jumbo v1, "alipay"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 767
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getMessageDigest([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 768
    sget-object v2, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 769
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 770
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".apshare.ShareEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    :cond_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    goto/16 :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/personalbase/model/ShareModel;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V
    .locals 2

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 490
    :goto_0
    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->setOnClickListener(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->show()V

    .line 496
    :cond_0
    return-void

    .line 468
    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogText;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogText;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 471
    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogImage;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogImage;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 474
    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWeb;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 477
    :pswitch_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogTaobao;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 480
    :pswitch_4
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWebSubTitle;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWebSubTitle;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 483
    :pswitch_5
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogWithStar;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 486
    :pswitch_6
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogStock;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 489
    :pswitch_7
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogFund;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 4

    .prologue
    .line 326
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->g:I

    sparse-switch v0, :sswitch_data_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 326
    :sswitch_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/ShareModel;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "localShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "localShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/i;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/i;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->alertCommon(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/j;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/j;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/personalbase/model/ShareModel;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    const-string/jumbo v1, "tUserId"

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tUserType"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000167"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/h;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/h;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->n:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->n:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/g;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->alertCommon(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/m;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/m;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->alertCommon(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/k;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/k;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->alertCommon(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/ShareModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->isCommonShareTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/t;

    invoke-direct {v1, p0, p1, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/t;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->alertCommon(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/u;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/u;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/personalbase/model/ShareModel;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x10 -> :sswitch_0
        0x11 -> :sswitch_4
        0x100 -> :sswitch_1
        0x101 -> :sswitch_2
        0x110 -> :sswitch_3
        0x111 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->l:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V
    .locals 1

    .prologue
    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)Lcom/alipay/mobile/personalbase/model/ShareModel;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    return-object v0
.end method

.method public static getMessageDigest([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 782
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 786
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 788
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v3

    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 791
    :goto_0
    if-lt v0, v4, :cond_0

    .line 797
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 799
    :goto_1
    return-object v0

    .line 792
    :cond_0
    aget-byte v6, v3, v0

    .line 793
    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    .line 794
    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 782
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method


# virtual methods
.method protected final a()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 172
    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    .line 224
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string/jumbo v0, "shareType"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->g:I

    .line 177
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->g:I

    if-ne v0, v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->finish()V

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->j:Landroid/os/Handler;

    .line 183
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 184
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 185
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getShareResultCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->l:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getShareHandler()Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->n:Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getShareSelectCallback()Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->m:Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarInputBox()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/ui/p;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/p;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->getmSearchBarButton()Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->clearFocus()V

    .line 201
    const-string/jumbo v0, "shareTitle"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 204
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->header_share_entry:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->addHeaderView(Landroid/view/View;)V

    .line 208
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->header_new_chat_room:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/q;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/q;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "shareContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/ShareModel;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->k:Lcom/alipay/mobile/personalbase/model/ShareModel;

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/r;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/r;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->loadListData()V

    goto/16 :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 648
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 655
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 657
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->refreshList(Landroid/database/Cursor;ZIZ)V

    .line 658
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 662
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public alertCommon(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V
    .locals 1

    .prologue
    .line 633
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;-><init>(Landroid/content/Context;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    .line 634
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;->setOnClickListener(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)V

    .line 635
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialogForward;->show()V

    .line 636
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 719
    if-eqz p1, :cond_0

    .line 720
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_1
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getContactSearched(Ljava/lang/String;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 670
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    if-nez v0, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->doSearchFriend(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 674
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 675
    new-instance v2, Landroid/database/MergeCursor;

    new-array v3, v6, [Landroid/database/Cursor;

    aput-object v0, v3, v5

    invoke-direct {v2, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 676
    new-instance v3, Lcom/alipay/mobile/socialsdk/chat/ui/n;

    invoke-direct {v3, p0, p1, v2, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/n;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Ljava/lang/String;Landroid/database/Cursor;I)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->s:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->t:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v3, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->doSearchGroup(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/database/Cursor;

    move-result-object v2

    .line 686
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 687
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/ui/o;

    invoke-direct {v0, p0, p1, v3, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/o;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Ljava/lang/String;Landroid/database/Cursor;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected loadListData()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 229
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->r:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    .line 230
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentFriendAndGroupCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    .line 231
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->s:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->t:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->composeMemberMappingGroup(ZZLjava/util/HashMap;Ljava/util/HashMap;)V

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v3, v3, v4}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->refreshList(Landroid/database/Cursor;ZIZ)V

    .line 234
    return-void
.end method

.method protected makeToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 441
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->l:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->l:Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;->onShareCanceled()V

    .line 732
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->g:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 733
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(I)V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 736
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    .line 737
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 700
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->h:Z

    .line 701
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->p:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->clearCallback()V

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    if-eqz v1, :cond_1

    .line 708
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 713
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->closeCursor(Landroid/database/Cursor;)V

    .line 714
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    .line 715
    return-void

    .line 709
    :catch_0
    move-exception v1

    .line 710
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {p0, v0}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 265
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 266
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    const-string/jumbo v3, "\u9009\u62e9\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_handle_type"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "with_me"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/alipay/mobile/socialsdk/chat/ui/s;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/s;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setUpNewChatRoom(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/NextOperationCallback;)V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 269
    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 274
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->v:Z

    if-eqz v1, :cond_3

    .line 275
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 276
    const-string/jumbo v3, "itemType"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 277
    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 278
    const-string/jumbo v2, "nameNoTag"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_2

    .line 280
    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 284
    :goto_1
    const-string/jumbo v2, "icon"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    .line 285
    const-string/jumbo v2, "groupCount"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->groupCount:I

    move-object v0, v1

    .line 293
    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    goto :goto_0

    .line 282
    :cond_2
    const-string/jumbo v2, "displayName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    goto :goto_1

    .line 290
    :cond_3
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 291
    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method protected refreshList(Landroid/database/Cursor;ZIZ)V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->d:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iput-boolean p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->v:Z

    .line 246
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 247
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->c:Lcom/alipay/mobile/commonui/widget/APSearchBar;

    if-nez p2, :cond_2

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/alipay/mobile/commonui/widget/APSearchBar;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    if-nez v0, :cond_4

    .line 250
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-direct {v0, p0, v1, p1}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->q:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 247
    goto :goto_1

    :cond_3
    move v2, v1

    .line 248
    goto :goto_2

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->o:Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;

    invoke-virtual {v0, p1, p3, p2}, Lcom/alipay/mobile/socialsdk/chat/adapter/ShareRecentCursorAdapter;->swapCursorWithSearching(Landroid/database/Cursor;IZ)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->i:Landroid/database/Cursor;

    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 257
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected sendForwardChatMsgObjs(Ljava/util/ArrayList;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;",
            ">;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ")V"
        }
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-gtz v3, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->forwardChatMsgs(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/l;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/l;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    .line 614
    const-wide/16 v2, 0x1f4

    .line 605
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    return-void

    .line 596
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 595
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-wide v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    iget-wide v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 598
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    .line 599
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    invoke-virtual {p1, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method protected sendShareContent(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 404
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 407
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 408
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;-><init>()V

    .line 409
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->isSync:Z

    .line 410
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getImageByte()[B

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;->fileData:[B

    .line 411
    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->uploadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUpRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    iget v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/alipay/mobile/socialsdk/chat/processer/MessageFactory;->shareMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V

    .line 417
    iget v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->g:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "localShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getExtendMaps()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "localShare"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->dismissProgressDialog()V

    .line 420
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->showOutShareResult(Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 436
    :goto_0
    return-void

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/ui/v;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    .line 433
    const-wide/16 v2, 0x1f4

    .line 422
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected showOutShareResult(Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/ui/w;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/ui/w;-><init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->setOnClickListener(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->show()V

    .line 461
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
