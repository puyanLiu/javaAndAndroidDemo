.class public Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;
.super Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;
.source "PersonalProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "layout_personal_profile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final KEY_ALIACCOUNT:Ljava/lang/String; = "key_aliaccout"

.field public static final KEY_GROUPID:Ljava/lang/String; = "key_groupId"

.field public static final KEY_HIDE_TRANSFER:Ljava/lang/String; = "key_hide_transfer"


# instance fields
.field protected A:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_credit_rating"
    .end annotation
.end field

.field protected B:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "ll_blacklist_and_report"
    .end annotation
.end field

.field protected C:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_add_to_blacklist"
    .end annotation
.end field

.field protected D:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_in_blacklist_tips"
    .end annotation
.end field

.field protected E:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_report_big"
    .end annotation
.end field

.field protected F:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_modify_my_info"
    .end annotation
.end field

.field protected G:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "personal_album"
    .end annotation
.end field

.field protected H:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_pic1"
    .end annotation
.end field

.field protected I:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_pic2"
    .end annotation
.end field

.field protected J:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_pic3"
    .end annotation
.end field

.field protected K:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_video_icon1"
    .end annotation
.end field

.field protected L:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_video_icon2"
    .end annotation
.end field

.field protected M:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_video_icon3"
    .end annotation
.end field

.field protected N:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "logout_layout"
    .end annotation
.end field

.field protected O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_more"
    .end annotation
.end field

.field protected P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "items_for_friend"
    .end annotation
.end field

.field protected Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "items_for_stranger"
    .end annotation
.end field

.field protected R:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_area"
    .end annotation
.end field

.field protected S:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_sign"
    .end annotation
.end field

.field protected T:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_origin"
    .end annotation
.end field

.field protected U:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_area"
    .end annotation
.end field

.field protected V:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_sign"
    .end annotation
.end field

.field protected W:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_origin"
    .end annotation
.end field

.field protected X:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

.field private Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field private Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

.field protected a:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_head"
    .end annotation
.end field

.field private aA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/commonui/widget/APImageView;",
            ">;"
        }
    .end annotation
.end field

.field private aB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aD:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aE:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aF:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aG:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aI:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

.field private aK:Lcom/alipay/mobile/commonui/widget/APPopMenu;

.field private aL:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

.field private aM:Z

.field private aN:Z

.field private aO:Z

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aT:Landroid/graphics/drawable/Drawable;

.field private aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private aV:I

.field private final aW:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field private final aX:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field private final aY:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

.field private aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

.field private ab:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:Ljava/lang/String;

.field private ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private ai:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

.field private aj:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

.field private ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private al:Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

.field private am:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

.field private an:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private ao:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

.field private ap:Z

.field private aq:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;

.field private ar:Z

.field private as:Ljava/lang/String;

.field private at:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private au:I

.field private final av:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final aw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final ax:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final ay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private az:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/commonui/widget/APImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_display_name"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_sex"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_verification"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "iv_star"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_zfb_nickname"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_group_nickname"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_real_name"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "ll_real_name"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_zfb_account"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_level"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tv_credit_rating"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_send_message"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_privacy_setting"
    .end annotation
.end field

.field protected o:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_transfer_accounts"
    .end annotation
.end field

.field protected p:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_add_to_contact"
    .end annotation
.end field

.field protected q:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_pass_verification"
    .end annotation
.end field

.field protected r:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_report"
    .end annotation
.end field

.field protected s:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_change_comment"
    .end annotation
.end field

.field protected t:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "title_name"
    .end annotation
.end field

.field protected u:Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "list_request_message"
    .end annotation
.end field

.field protected v:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "ll_request_message"
    .end annotation
.end field

.field protected w:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "btn_reply"
    .end annotation
.end field

.field protected x:Lcom/alipay/mobile/commonui/widget/APImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "divider_reply"
    .end annotation
.end field

.field protected y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_zfb_account"
    .end annotation
.end field

.field protected z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "item_level"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ax:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ay:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aN:Z

    .line 247
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/v;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/v;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aW:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 271
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ae;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ae;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aX:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 282
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/af;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/af;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aY:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 648
    if-eqz p0, :cond_0

    .line 649
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    :cond_0
    return-object v1

    .line 649
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 650
    const-string/jumbo v3, "\u000c"

    const-string/jumbo v4, ": "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;Lcom/alipay/mobile/commonui/widget/APPopMenu;)V
    .locals 3

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->starFriend:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->cancel_star_friend:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->cancel_blacklist:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aD:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setName(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->au:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->at:Ljava/util/ArrayList;

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->at:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setData(Ljava/util/ArrayList;)V

    return-void

    :cond_0
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->set_to_star_friend:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->set_to_blacklist:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->at:Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aP:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->cancel_blacklist:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->setName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ax:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->at:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ay:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->at:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 1026
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1027
    const-string/jumbo v0, "userId"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v0, "userType"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string/jumbo v2, "hideChatRecordItem"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1031
    const/4 v2, 0x0

    const-string/jumbo v3, "20000256"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1032
    return-void

    .line 1029
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const/16 v3, 0x64

    .line 398
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ar:Z

    if-eqz v0, :cond_1

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ao:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-interface {v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getMyProfile()Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->resultCode:I

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->userId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->nickName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->realName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->gender:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->headImg:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->signature:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->userGrade:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userGrade:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->province:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->area:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->realNameStatus:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameStatus:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->alipayAccount:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-wide v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->version:J

    iput-wide v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->version:J

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    const/4 v3, 0x1

    iput v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->friendStatus:I

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameVisable:Z

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v3, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->zmCreditText:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->zmCreditUrl:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    const-string/jumbo v2, "Y"

    iput-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->lifeCircleType:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->addByReq:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setNeedVerify(Z)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->allowRecommend:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSendMeContact(Z)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->searchByEmail:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSearchByAccount(Z)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v2, v2, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->searchByEmail:Z

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSearchByPhone(Z)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-object v2, v2, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setSignature(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->getInstance()Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/GetMyProfileResult;->socialInfo:Lcom/alipay/mobilerelation/core/model/user/SocialInfo;

    iget-boolean v0, v0, Lcom/alipay/mobilerelation/core/model/user/SocialInfo;->showMsgDetail:Z

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/api/util/FriendSettingConfig;->setShowMsgDetail(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshUi()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->al:Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;->loadProfileMediaFromRpc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshUi()V

    .line 404
    return-void

    .line 399
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 401
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UidLidMappingDaoOp;->queryLoginIdForUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;->alipayAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;->targetUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ao:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-interface {v2, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;->getProfile(Lcom/alipay/mobilerelation/core/model/req/SimpleCommonReq;)Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    if-ne v2, v3, :cond_4

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    iget-object v0, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    if-nez v0, :cond_3

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->initPinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    iput-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v0, :cond_5

    :try_start_2
    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "getProfile:\u8bf7\u6c42\u5931\u8d25 resp.resultCode == 302"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultDesc:Ljava/lang/String;

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/x;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/x;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_7

    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    const/16 v2, 0x146

    if-eq v1, v2, :cond_6

    iget v1, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    const/16 v2, 0x147

    if-ne v1, v2, :cond_7

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aM:Z

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getProfile:\u8bf7\u6c42\u5931\u8d25 resp.resultCode == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultCode:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->updateGenericButton(I)V

    goto/16 :goto_0

    :cond_7
    if-nez v0, :cond_8

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->get_profile_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "getProfile:\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/SingleQueryResult;->resultDesc:Ljava/lang/String;
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ae:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->B:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->E:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->F:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->N:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ab:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ab:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/socialsdk/R$drawable;->contact_account_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "m"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->gender_male:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->starFriend:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->not_set:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    :goto_3
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    :goto_4
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->af:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$string;->group_nickname_prefix:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ag:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->has_verify:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameVisable:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 494
    :goto_7
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->mark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    :goto_8
    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->x:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->v:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aq:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->a:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;->notifyDataSetChanged()V

    .line 495
    :goto_a
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :goto_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userGrade:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :goto_c
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->A:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :goto_d
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v2

    :goto_e
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string/jumbo v1, "Y"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->lifeCircleType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    if-eqz v6, :cond_19

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->d()V

    :goto_f
    const-string/jumbo v1, "by_scan"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "by_group"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "by_family"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v2

    :goto_10
    if-eqz v0, :cond_1b

    if-eqz v5, :cond_1b

    if-nez v1, :cond_1b

    move v0, v2

    :goto_11
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :goto_12
    if-nez v6, :cond_1d

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 496
    :goto_13
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ar:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->F:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    .line 497
    :goto_14
    return-void

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "f"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->gender_female:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/socialsdk/R$string;->nickname_prefix:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->has_hide:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->has_hide:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->not_verify:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_c
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-boolean v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->creator:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    const-string/jumbo v0, "Y"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->realNameStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->has_verify:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->name:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->has_hide:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->realname_prefix:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialsdk/R$drawable;->not_verify:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->i:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto/16 :goto_7

    :cond_11
    move v0, v3

    .line 494
    goto/16 :goto_8

    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->x:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_9

    :cond_13
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->v:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 495
    :cond_14
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->y:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_15
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->z:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userGrade:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_16
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->A:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/socialsdk/R$color;->text_blue_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    :goto_15
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_17
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/socialsdk/R$color;->text_profile_right_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto :goto_15

    :cond_18
    move v0, v3

    goto/16 :goto_e

    :cond_19
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->G:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_f

    :cond_1a
    move v1, v3

    goto/16 :goto_10

    :cond_1b
    move v0, v3

    goto/16 :goto_11

    :cond_1c
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_12

    :cond_1d
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_13

    :cond_1e
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->sourceDec:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->source:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    move v4, v2

    :goto_16
    if-eqz v6, :cond_22

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->d()V

    if-eqz v0, :cond_20

    if-eqz v5, :cond_20

    if-nez v4, :cond_20

    move v0, v2

    :goto_17
    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_13

    :cond_1f
    move v4, v3

    goto :goto_16

    :cond_20
    move v0, v3

    goto :goto_17

    :cond_21
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_13

    :cond_22
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->P:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->U:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :goto_18
    if-eqz v5, :cond_26

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->V:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    :goto_19
    if-eqz v4, :cond_27

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->W:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->T:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->source:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a
    if-eqz v0, :cond_28

    if-eqz v5, :cond_28

    if-nez v4, :cond_28

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_13

    :cond_23
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->U:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    if-nez v1, :cond_24

    const-string/jumbo v1, ""

    :goto_1b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    if-nez v1, :cond_25

    const-string/jumbo v1, ""

    :goto_1c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->R:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18

    :cond_24
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->province:Ljava/lang/String;

    goto :goto_1b

    :cond_25
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->area:Ljava/lang/String;

    goto :goto_1c

    :cond_26
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->V:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->S:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v6, v6, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->signature:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_27
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->W:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto :goto_1a

    :cond_28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    goto/16 :goto_13

    .line 496
    :cond_29
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_2a
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->au:I

    if-eqz v0, :cond_30

    move v0, v2

    :goto_1d
    if-eqz v0, :cond_2b

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_2b
    iget-boolean v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-boolean v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->creator:Z

    if-eqz v4, :cond_31

    :goto_1e
    iput-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aP:Z

    if-eqz v2, :cond_32

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_2c
    :goto_1f
    if-eqz v2, :cond_2d

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->B:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->C:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v5, Lcom/alipay/mobile/socialsdk/R$string;->cancel_blacklist:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(I)V

    :cond_2d
    :goto_20
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-nez v4, :cond_2e

    if-nez v2, :cond_2e

    if-nez v0, :cond_2e

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aR:Z

    if-nez v2, :cond_2e

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_2e
    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-eqz v1, :cond_2f

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->E:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_2f
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->D:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_14

    :cond_30
    move v0, v3

    goto :goto_1d

    :cond_31
    move v2, v3

    goto :goto_1e

    :cond_32
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_1f

    :cond_33
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->C:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v5, Lcom/alipay/mobile/socialsdk/R$string;->set_to_blacklist:I

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(I)V

    goto :goto_20

    :cond_34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->D:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_14
.end method

.method private d()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 772
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->G:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    :cond_0
    return-void

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aT:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 778
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x272728

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aT:Landroid/graphics/drawable/Drawable;

    .line 780
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    move v2, v3

    :goto_0
    move v4, v5

    .line 781
    :goto_1
    if-lt v4, v2, :cond_4

    .line 798
    if-ge v2, v3, :cond_0

    .line 799
    const/4 v0, 0x2

    move v1, v0

    :goto_2
    if-lt v1, v2, :cond_0

    .line 800
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 799
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 782
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    .line 783
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 784
    const-string/jumbo v1, "video"

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 785
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 786
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->am:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6, v0, v7, v12}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;->loadAlbumVideo(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)V

    .line 781
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 788
    :cond_5
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;-><init>()V

    .line 789
    iget v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aV:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->width(Ljava/lang/Integer;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    move-result-object v6

    iget v7, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aV:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->height(Ljava/lang/Integer;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    move-result-object v6

    .line 790
    new-instance v7, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSize()[I

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSize()[I

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->originalSize(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    move-result-object v6

    .line 791
    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;

    .line 792
    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ab:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;->getSrc()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions$Builder;->build()Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1, v12}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/load/DisplayImageOptions;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic d(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->b()V

    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-eqz v0, :cond_0

    .line 1036
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setOrCancelBlacklistByRpc(Z)V

    .line 1050
    :goto_0
    return-void

    .line 1038
    :cond_0
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->set_to_blacklist:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->set_to_blacklist_warning:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/ak;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ak;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    .line 1043
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/socialsdk/contact/ui/al;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/al;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    move-object v0, p0

    .line 1038
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 7

    .prologue
    .line 1601
    const/4 v1, 0x0

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->delete_alert:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->delete:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/ac;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ac;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/socialsdk/contact/ui/ad;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ad;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aK:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1562
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1563
    const-string/jumbo v1, "key_aliaccount"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1564
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 1565
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->at:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 3

    .prologue
    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_aliaccount"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aD:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aE:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1561
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f()V

    return-void
.end method

.method static synthetic n(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aF:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1465
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "shareType"

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "act"

    const-string/jumbo v3, "business_card"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "business_contact"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, v4, v4}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->shareMessage(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V

    return-void
.end method

.method static synthetic p(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aG:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Z)V

    return-void
.end method

.method static synthetic r(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->e()V

    return-void
.end method

.method static synthetic t(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aI:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 4

    .prologue
    .line 1550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "toBillLWList"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sourceId"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "contactType"

    const-string/jumbo v2, "p2pTransfer"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "contactId"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000003"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 295
    if-nez v3, :cond_0

    .line 379
    :goto_0
    return-void

    .line 301
    :cond_0
    :try_start_0
    const-string/jumbo v0, "key_aliaccout"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 302
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    const-string/jumbo v4, "mContactAccount == null"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->H:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->I:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->az:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->J:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->K:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->L:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aA:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->M:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v3, Lcom/alipay/mobile/socialsdk/contact/ui/ag;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ag;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v3, Lcom/alipay/mobile/socialsdk/R$drawable;->more:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonIconResource(I)V

    .line 351
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ar:Z

    if-eqz v0, :cond_7

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 356
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->r:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->E:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->F:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->C:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aq:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->u:Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aq:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity$MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->u:Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/view/AutoHeightListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->O:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->G:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->l:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c()V

    .line 377
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->loadFriendInfo()V

    goto/16 :goto_0

    .line 308
    :cond_1
    const/high16 v0, 0x42700000    # 60.0f

    :try_start_1
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aV:I

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->as:Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    .line 312
    const-string/jumbo v0, "from_contact_main_page"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aO:Z

    .line 313
    const-string/jumbo v0, "key_hide_transfer"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aR:Z

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    const-string/jumbo v5, "mUserId mAccount can not be null"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->an:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->an:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v5, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ao:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationQueryService;

    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->al:Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ai:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aj:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ab:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->am:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaVideoService;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->an:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v4, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aL:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_4

    const-string/jumbo v4, "SOCIAL_CONTACT"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-nez v4, :cond_4

    :try_start_2
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v4, "real_name"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->au:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 318
    :cond_4
    :goto_3
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->set_remarkname:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->menu_set_remark_name:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->set_to_star_friend:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->menu_star_friend:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aD:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->set_realname_auth:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->hide_realname:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aE:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->recommend_to_friend:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->menu_share:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aF:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->report:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->menu_report:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aG:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->add_to_blacklist:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->menu_black_name:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->delete:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/socialsdk/R$drawable;->menu_delete:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aI:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    new-instance v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->transfer_record:I

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/ui/R$drawable;->titlebar_detail_normal:I

    invoke-direct {v0, v4, v5}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aD:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aE:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aF:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aG:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->av:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aI:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aD:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aF:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aG:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aw:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aI:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ax:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ax:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aH:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ax:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ay:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aC:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ay:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aJ:Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v4}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aK:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/aa;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/aa;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aK:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/ab;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ab;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "content://contactsdb/ali_account/"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v4, v4, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "register:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aW:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v4, v0, v5, v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    const-string/jumbo v0, "content://contactsdb/contact_relation/3"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "register:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aX:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v4, v0, v5, v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    const-string/jumbo v0, "content://contactsdb/recommendation_friend"

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "register:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aY:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v4, v0, v5, v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->registerContentObserver(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    instance-of v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-eqz v0, :cond_5

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    .line 325
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ar:Z

    .line 327
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->as:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->as:Ljava/lang/String;

    const-string/jumbo v4, "by_group"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->af:Z

    .line 328
    const-string/jumbo v0, "key_groupId"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ae:Ljava/lang/String;

    goto/16 :goto_1

    .line 317
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->au:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_6
    move v0, v2

    .line 327
    goto :goto_4

    .line 354
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    goto/16 :goto_2
.end method

.method protected acceptVerificationByRpc()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v1

    .line 1133
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->an:Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 1134
    const-class v2, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 1135
    new-instance v2, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;

    invoke-direct {v2}, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;-><init>()V

    .line 1136
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;->targetUserId:Ljava/lang/String;

    .line 1137
    const-string/jumbo v3, "1"

    iput-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;->bizType:Ljava/lang/String;

    .line 1138
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 1140
    :try_start_0
    invoke-interface {v0, v2}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->handleRelation(Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v0

    .line 1141
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1142
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultCode:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    if-eqz v2, :cond_1

    .line 1143
    const/4 v2, 0x1

    iput v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->requestType:I

    .line 1144
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->friendVO:Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->initAliAccount(Lcom/alipay/mobilerelation/common/service/facade/result/FriendVO;)V

    .line 1145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 1146
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->add_friend_sucess:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aQ:Z

    .line 1156
    return-void

    .line 1147
    :cond_1
    if-eqz v0, :cond_0

    .line 1148
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, v0, Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;->resultDesc:Ljava/lang/String;

    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->confirm:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1152
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1153
    :catchall_0
    move-exception v0

    .line 1154
    iput-boolean v7, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aQ:Z

    .line 1155
    throw v0
.end method

.method protected addFriend()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 1420
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1421
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1422
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 1423
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1424
    new-instance v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    .line 1425
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->as:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->sourceDec:Ljava/lang/String;

    .line 1426
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 1427
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 1428
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-boolean v3, v3, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    iput-boolean v3, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->hideRealName:Z

    .line 1429
    const-string/jumbo v3, "aliaccount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1430
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->addFriend(Landroid/os/Bundle;)I

    .line 1431
    return-void
.end method

.method protected deleteFriend()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1617
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 1619
    :try_start_0
    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;-><init>()V

    .line 1620
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;->targetUserId:Ljava/lang/String;

    .line 1621
    const-string/jumbo v1, "2"

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;->bizType:Ljava/lang/String;

    .line 1622
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;->alipayAccount:Ljava/lang/String;

    .line 1623
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aL:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->handleRelation(Lcom/alipay/mobilerelation/biz/shared/req/HandleRelationReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v0

    .line 1624
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 1626
    const-string/jumbo v2, "mRelationManageService:deleteFriend:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    .line 1625
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string/jumbo v0, "1"

    .line 1629
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 1628
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->composeUserKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aj:Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSession(Ljava/lang/String;)V

    .line 1631
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 1632
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->deleteAllMsgs()V

    .line 1633
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->deleteAccountById(Ljava/lang/String;)V

    .line 1634
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aO:Z

    if-eqz v0, :cond_0

    .line 1635
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->finish()V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1655
    return-void

    .line 1637
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1638
    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000167"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1639
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1640
    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000166"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1649
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1650
    :catchall_0
    move-exception v0

    .line 1651
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1652
    throw v0

    .line 1643
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    .line 1644
    const-string/jumbo v3, "mRelationManageService:deleteFriend:\u8bf7\u6c42\u5931\u8d25"

    .line 1643
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->request_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

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
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_0

    .line 1187
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 1188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    .line 1192
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->af:Z

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ai:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ae:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNick(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_1

    .line 1195
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ag:Ljava/lang/String;

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    .line 1199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->al:Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;->loadProfileMediaFromLocal(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aB:Ljava/util/List;

    .line 1200
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshUi()V

    .line 1202
    :try_start_0
    const-string/jumbo v0, "by_scan"

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1203
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SCAN_CODE"

    const-string/jumbo v2, "PHASE_SCAN_CODE_USER_PROFILE"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 1204
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SCAN_CODE"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->commitLinkRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aN:Z

    if-eqz v0, :cond_3

    .line 1210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aN:Z

    .line 1211
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->b()V

    .line 1214
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected loadGroupNickName()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ai:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ae:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNick(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    move-result-object v0

    .line 1162
    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ag:Ljava/lang/String;

    .line 1165
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshGroupNickName()V

    .line 1166
    return-void
.end method

.method protected loadReplyMsg()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->getRecommendationFriendById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    .line 479
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->refreshUi()V

    .line 481
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/16 v4, 0xa0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 867
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 868
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_send_message:I

    if-ne v0, v1, :cond_1

    .line 870
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 871
    const-string/jumbo v1, "tUserId"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string/jumbo v1, "tUserType"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000167"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 877
    :cond_1
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_privacy_setting:I

    if-ne v0, v1, :cond_2

    .line 878
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f()V

    goto :goto_0

    .line 879
    :cond_2
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_transfer_accounts:I

    if-ne v0, v1, :cond_3

    .line 880
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 881
    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "toAccount"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string/jumbo v1, "sourceId"

    const-string/jumbo v2, "profile"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const-string/jumbo v1, "account"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000116"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 886
    :cond_3
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_add_to_contact:I

    if-ne v0, v1, :cond_4

    .line 887
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->addFriend()V

    goto :goto_0

    .line 888
    :cond_4
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_pass_verification:I

    if-ne v0, v1, :cond_5

    .line 889
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aQ:Z

    if-nez v0, :cond_0

    .line 890
    iput-boolean v6, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aQ:Z

    .line 891
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->acceptVerificationByRpc()V

    goto :goto_0

    .line 893
    :cond_5
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_report:I

    if-ne v0, v1, :cond_6

    .line 894
    invoke-direct {p0, v6}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Z)V

    goto :goto_0

    .line 895
    :cond_6
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_report_big:I

    if-ne v0, v1, :cond_7

    .line 896
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Z)V

    goto :goto_0

    .line 897
    :cond_7
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_change_comment:I

    if-ne v0, v1, :cond_8

    .line 898
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 899
    const-class v2, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;

    .line 898
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    const-string/jumbo v1, "key_aliaccount"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 901
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 902
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 903
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 904
    :cond_8
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->iv_head:I

    if-ne v0, v1, :cond_b

    .line 905
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/util/LogAgentUtil;->UC_SJJR_150908_40(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ar:Z

    if-eqz v0, :cond_9

    .line 907
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000031"

    invoke-interface {v0, v3, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 910
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 912
    const-class v1, Lcom/alipay/mobile/beehive/service/PhotoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/service/PhotoService;

    .line 913
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    .line 914
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 915
    invoke-static {p0}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getDefaultHeadImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 920
    :goto_1
    new-instance v2, Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->setThumbHeight(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 922
    invoke-virtual {v2, v4}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->setThumbWidth(I)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 923
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->setThumb(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 924
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 925
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 927
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 928
    new-instance v4, Lcom/alipay/mobile/beehive/service/PhotoMenu;

    sget v5, Lcom/alipay/mobile/socialsdk/R$string;->svae_to_phone:I

    invoke-virtual {p0, v5}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "save"

    invoke-direct {v4, v5, v7}, Lcom/alipay/mobile/beehive/service/PhotoMenu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    const-string/jumbo v4, "longClickMenu"

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 931
    const-string/jumbo v1, "previewClickExit"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 932
    const-string/jumbo v1, "forceFullScreenPreview"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 933
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/ai;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ai;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alipay/mobile/beehive/service/PhotoService;->browsePhoto(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/util/List;Landroid/os/Bundle;Lcom/alipay/mobile/beehive/service/PhotoBrowseListener;)V

    goto/16 :goto_0

    .line 917
    :cond_a
    const-string/jumbo v2, "_160X160"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 953
    :cond_b
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_reply:I

    if-ne v0, v1, :cond_c

    .line 954
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 955
    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/w;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/w;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    const-string/jumbo v2, "\u56de\u590d"

    const/16 v5, 0x28

    move-object v0, p0

    move-object v4, v3

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-static/range {v0 .. v9}, Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil;->showCustomDialogUtil(Landroid/content/Context;Lcom/alipay/mobile/socialsdk/api/util/CustomDialogUtil$onConfirmCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZ)V

    .line 956
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/aj;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/aj;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    .line 961
    const-wide/16 v2, 0x320

    .line 956
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 963
    :cond_c
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_add_to_blacklist:I

    if-ne v0, v1, :cond_d

    .line 964
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->e()V

    goto/16 :goto_0

    .line 965
    :cond_d
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->btn_modify_my_info:I

    if-ne v0, v1, :cond_e

    .line 966
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/util/LogAgentUtil;->UC_SJJR_150908_41(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000057"

    invoke-interface {v0, v3, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 967
    :cond_e
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->item_more:I

    if-ne v0, v1, :cond_f

    .line 968
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "key_aliaccout"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "KEY_NEW_FRIEND"

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ap:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "KEY_FROM_NEW_FRIEND_LIST"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 969
    :cond_f
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->personal_album:I

    if-ne v0, v1, :cond_10

    .line 970
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/util/LogAgentUtil;->UC_SJJR_150908_42(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "userFeeds"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "aliaccount"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000261"

    invoke-interface {v1, v3, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 971
    :cond_10
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->tv_credit_rating:I

    if-ne v0, v1, :cond_0

    .line 972
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditText:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/util/LogAgentUtil;->UC_SJJR_150908_37(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->zmCreditUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1335
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->onDestroy()V

    .line 1336
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aW:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aX:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ak:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aY:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->unregisterContentObserver(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V

    .line 1337
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1341
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1342
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1343
    check-cast v0, Ljava/lang/String;

    .line 1344
    const/4 v1, 0x0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1345
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1346
    const-string/jumbo v2, "\u6211"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return v5

    .line 1349
    :cond_1
    new-instance v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 1350
    iput v5, v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 1351
    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->copy:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 1352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->X:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    if-nez v1, :cond_2

    .line 1355
    new-instance v1, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->X:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    .line 1357
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->X:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/ui/z;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/z;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Lcom/alipay/mobile/personalbase/ui/SocialBaseActivity;->onResume()V

    .line 384
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aS:Z

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aS:Z

    .line 386
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/ui/ah;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/ah;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 395
    :cond_0
    return-void
.end method

.method protected refreshGroupNickName()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->af:Z

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 1176
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/socialsdk/R$string;->group_nickname_prefix:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected refreshUi()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aM:Z

    if-eqz v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->c()V

    goto :goto_0
.end method

.method protected sendVerify(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    if-nez v0, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->an:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    .line 1100
    new-instance v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;

    invoke-direct {v1}, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;-><init>()V

    .line 1103
    :try_start_0
    iput-object p1, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->message:Ljava/lang/String;

    .line 1104
    const-string/jumbo v2, "2"

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->bizType:Ljava/lang/String;

    .line 1105
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ac:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->targetUserId:Ljava/lang/String;

    .line 1106
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->alipayAccount:Ljava/lang/String;

    .line 1107
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;->showRealName:Z

    .line 1108
    invoke-interface {v0, v1}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->addFriendRequest(Lcom/alipay/mobilerelation/biz/shared/req/AddFriendReq;)Lcom/alipay/mobilerelation/biz/shared/resp/HandleRelaionResult;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->time:J

    .line 1114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;->markList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6211\u000c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aa:Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Z:Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecommendationFriendDaoOp;->updataRecommendationFriend(Lcom/alipay/mobile/socialsdk/bizdata/model/RecommendationFriend;Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1126
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    goto :goto_0

    .line 1117
    :cond_3
    if-nez v0, :cond_4

    :try_start_1
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->send_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1125
    :catchall_0
    move-exception v0

    .line 1126
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1127
    throw v0

    .line 1117
    :cond_4
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1123
    :catch_1
    move-exception v0

    .line 1124
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1126
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    goto/16 :goto_0
.end method

.method protected setOrCancelBlacklistByRpc(Z)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1056
    :try_start_0
    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;-><init>()V

    .line 1057
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;->targetUserId:Ljava/lang/String;

    .line 1058
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;->alipayAccount:Ljava/lang/String;

    .line 1059
    iput-boolean p1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;->blacked:Z

    .line 1060
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aL:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->setBlacked(Lcom/alipay/mobilerelation/biz/shared/req/SetBlackedReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v0

    .line 1061
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 1063
    const-string/jumbo v2, "PersonalProfileActivity setOrCancelBlacklistByRpc:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    .line 1062
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-boolean p1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    .line 1065
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1077
    return-void

    .line 1067
    :cond_0
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V

    .line 1068
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 1069
    const-string/jumbo v2, "PersonalProfileActivity setOrCancelBlacklistByRpc:\u8bf7\u6c42\u5931\u8d25"

    .line 1068
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1073
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1074
    :catchall_0
    move-exception v0

    .line 1075
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1076
    throw v0

    .line 1067
    :cond_1
    :try_start_3
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->request_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method protected setOrCancelStarFriend(Z)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1569
    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1571
    :try_start_0
    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;

    invoke-direct {v0}, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;-><init>()V

    .line 1572
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->targetUserId:Ljava/lang/String;

    .line 1573
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->alipayAccount:Ljava/lang/String;

    .line 1574
    const-string/jumbo v1, "starred"

    iput-object v1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->switchName:Ljava/lang/String;

    .line 1575
    iput-boolean p1, v0, Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;->switchStatus:Z

    .line 1576
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aL:Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;

    invoke-interface {v1, v0}, Lcom/alipay/mobilerelation/biz/shared/rpc/AlipayRelationManageService;->setFriendConfig(Lcom/alipay/mobilerelation/biz/shared/req/SetConfigReq;)Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

    move-result-object v0

    .line 1577
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultCode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 1579
    const-string/jumbo v2, "setOrCancelStarFriend:\u63a5\u6536\u6b63\u5e38\u54cd\u5e94"

    .line 1578
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-boolean p1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->starFriend:Z

    .line 1581
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->ah:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->Y:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->createOrUpdateAccountInfo(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 1582
    if-eqz p1, :cond_0

    .line 1583
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->has_set_to_star_friend:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1598
    return-void

    .line 1585
    :cond_0
    :try_start_1
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->has_cancel_star_friend:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1594
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1595
    :catchall_0
    move-exception v0

    .line 1596
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->dismissProgressDialog()V

    .line 1597
    throw v0

    .line 1588
    :cond_1
    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;->resultDesc:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->toast(Ljava/lang/String;I)V

    .line 1589
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->aU:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    .line 1590
    const-string/jumbo v2, "setOrCancelStarFriend:\u8bf7\u6c42\u5931\u8d25"

    .line 1589
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1588
    :cond_2
    sget v0, Lcom/alipay/mobile/socialsdk/R$string;->request_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1
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

.method protected updateGenericButton(I)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1265
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->N:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 1266
    const/16 v0, 0x146

    if-ne p1, v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 1280
    :goto_0
    return-void

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 1270
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->delete:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/socialsdk/contact/ui/y;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/y;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
