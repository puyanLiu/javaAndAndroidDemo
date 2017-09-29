.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_register"
.end annotation


# static fields
.field public static CHINESE_PATTERN:Ljava/lang/String;

.field public static LENGTH_LIMIT:I

.field public static mPattern:Ljava/lang/String;


# instance fields
.field private a:Lcom/ali/user/mobile/register/RegionInfo;

.field private b:I

.field private c:Lcom/ali/user/mobile/register/RegistParam;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/register/RegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
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

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

.field private i:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

.field private j:Lcom/alipay/mobile/base/config/ConfigService;

.field private k:Landroid/text/Editable;

.field private l:Landroid/text/TextWatcher;

.field protected mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "alipayNickInputBox"
    .end annotation
.end field

.field protected mAvatarBase64:Ljava/lang/String;

.field protected mAvatarBitmap:Landroid/graphics/Bitmap;

.field protected mAvatarView:Landroid/widget/ImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "userAvatar"
    .end annotation
.end field

.field protected mBindConfirm:Landroid/widget/Button;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "bindConfirm"
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

.field protected mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

.field protected mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "loginPasswordInput"
    .end annotation
.end field

.field protected mPhoneInput:Landroid/widget/EditText;

.field protected mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "phoneInputBox"
    .end annotation
.end field

.field protected mProtocol:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "taobao_protocol"
    .end annotation
.end field

.field protected mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

.field protected mRegionLayout:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "regionLayout"
    .end annotation
.end field

.field protected mRegisterPasswordError:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "registerPasswordError"
    .end annotation
.end field

.field protected mRegisterScrollView:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_scrollview"
    .end annotation
.end field

.field protected mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

.field protected mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_title"
    .end annotation
.end field

.field protected mRegisterView:Landroid/view/View;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "aliuser_register"
    .end annotation
.end field

.field protected mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_scrollview"
    .end annotation
.end field

.field protected mTvCountry:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tvCountry"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x20

    sput v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->LENGTH_LIMIT:I

    .line 108
    const-string/jumbo v0, "^[\u4e00-\u9fa5]+$"

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->CHINESE_PATTERN:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "^(86){0,1}1\\d{10}$"

    sput-object v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPattern:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    .line 139
    sget v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->LENGTH_LIMIT:I

    iput v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:I

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/HashMap;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHandler:Landroid/os/Handler;

    .line 955
    new-instance v0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->l:Landroid/text/TextWatcher;

    .line 104
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "UC-ZC-150512-04"

    const-string/jumbo v1, "zcback"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RetLoginBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->finish()V

    .line 217
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1034
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1035
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1036
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1037
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1038
    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1039
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1025
    const/16 v1, 0x9

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->aliuser_register:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1026
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1027
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1028
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_edit_margin_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1029
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1030
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1031
    return-void
.end method

.method private a(Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 3

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mTvCountry:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/ali/user/mobile/register/RegionInfo;->mRegionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p1, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->phoneNumber:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_china:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p1, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_num:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 661
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 400
    const-string/jumbo v1, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 401
    return-void
.end method

.method static synthetic access$10(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/avatar/EditAvatarActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "input-type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$11(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$13(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a()V

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 992
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5b57\u7b26\u957f\u5ea6\u4e3a\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->CHINESE_PATTERN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)Landroid/text/Editable;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->k:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:I

    return v0
.end method

.method static synthetic access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->k:Landroid/text/Editable;

    return-void
.end method

.method static synthetic access$8(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    return-void
.end method

.method static synthetic access$9(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Lcom/ali/user/mobile/register/RegionInfo;)V

    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 790
    :try_start_0
    const-string/jumbo v3, ""

    .line 791
    const-string/jumbo v0, "CN"

    .line 792
    const-string/jumbo v1, "86"

    .line 794
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 795
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 796
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 797
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v0, v3

    move-object v3, v8

    .line 800
    :goto_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$array;->CountryCodes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 801
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_2

    .line 808
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "+"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    new-instance v2, Lcom/ali/user/mobile/register/RegionInfo;

    invoke-direct {v2}, Lcom/ali/user/mobile/register/RegionInfo;-><init>()V

    iput-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    .line 810
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iput-object v1, v2, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 811
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iput-object v3, v2, Lcom/ali/user/mobile/register/RegionInfo;->mDomain:Ljava/lang/String;

    .line 813
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 814
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->phoneNumber:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 815
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_china:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V

    .line 821
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 822
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 823
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 826
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 827
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_1
    :goto_4
    return-void

    .line 802
    :cond_2
    aget-object v5, v4, v2

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 803
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 804
    const/4 v1, 0x0

    aget-object v1, v5, v1

    goto/16 :goto_2

    .line 801
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 817
    :cond_4
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$string;->input_phone_num:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setHint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 829
    :catch_0
    move-exception v0

    .line 830
    const-string/jumbo v1, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fail to fetch phone number:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v8, v0

    move-object v0, v3

    move-object v3, v8

    goto/16 :goto_0
.end method


# virtual methods
.method afterCountryCode(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 283
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->countryCodeResList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getCountryCode result\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 288
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    .line 289
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->countryCodeResList:Ljava/util/List;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/RegisterUtil;->fillData(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/ArrayList;

    .line 290
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    const-string/jumbo v1, "region"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v1, "letter"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v1, "letter_str"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 295
    const/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 290
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 298
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegMixRes;->memo:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0xbb8

    const/4 v3, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 510
    if-nez p1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MobileRegPreVerify result\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    .line 515
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 517
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->phoneNumber:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/StringUtil;->displayWithComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->confirm_phone_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->confirm_phone_msg:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "\u3000"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    new-instance v5, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$6;

    invoke-direct {v5, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$6;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    .line 534
    new-instance v7, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$7;

    invoke-direct {v7, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$7;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    move-object v0, p0

    move-object v6, v4

    .line 524
    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V

    goto/16 :goto_0

    .line 541
    :cond_3
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_4

    .line 542
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_4
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbb9

    if-eq v0, v1, :cond_5

    .line 544
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbba

    if-ne v0, v1, :cond_6

    .line 545
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 546
    :cond_6
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_7

    .line 547
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :cond_7
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbbc

    if-ne v0, v1, :cond_8

    .line 549
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_8
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbdd

    if-ne v0, v1, :cond_9

    .line 551
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9

    .line 552
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 553
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 554
    :cond_9
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbd9

    if-ne v0, v1, :cond_a

    .line 555
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    .line 556
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 557
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0, v3}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 558
    :cond_a
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbf5

    if-ne v0, v1, :cond_c

    .line 559
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "goVerifyIdentity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->securityId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    if-eqz v0, :cond_b

    const-string/jumbo v2, "Aliuser.Register.VerifyIdentity"

    new-instance v3, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;

    invoke-direct {v3, p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$8;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->system_error_try_later:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 560
    :cond_c
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbf6

    if-ne v0, v1, :cond_d

    .line 561
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "regionNo"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u3000"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "flag"

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "direct_login"

    iget-boolean v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->directLogin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "login_token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->loginToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "same_user_info"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 563
    :cond_d
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0, v5}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 564
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbc5

    if-eq v0, v1, :cond_e

    .line 565
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbcd

    if-eq v0, v1, :cond_e

    .line 566
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbcc

    if-eq v0, v1, :cond_e

    .line 567
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbcb

    if-eq v0, v1, :cond_e

    .line 568
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbd4

    if-eq v0, v1, :cond_e

    .line 569
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;->resultStatus:I

    const/16 v1, 0xbd6

    if-ne v0, v1, :cond_0

    .line 570
    :cond_e
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 634
    if-eqz p1, :cond_0

    .line 635
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SendSms result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_1

    .line 638
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "regionNo"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->startActivity(Landroid/content/Intent;)V

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    const-string/jumbo v1, "207"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_2
    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 644
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$9;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$9;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    .line 648
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    .line 643
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method alertCountryCode()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->confirm_can_not_get_country_code_msg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->confirm_ok:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    .line 304
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    return-void
.end method

.method doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 472
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "doMobileRegPreVerify"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 475
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegionInfo;->mRegionNumber:Ljava/lang/String;

    .line 476
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    invoke-interface {v0, v2}, Lcom/ali/user/mobile/service/UserRegisterService;->setMobileNo(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/rsa/Rsa;->getRSAKey(Landroid/content/Context;)Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/aliusergw/biz/shared/processer/rsa/RSAPKeyResult;->rsaPK:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/rsa/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 485
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    .line 486
    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBase64:Ljava/lang/String;

    iget-object v6, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v6}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 487
    iget-object v7, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->getRdsData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, p1

    move-object v8, p2

    .line 485
    invoke-interface/range {v0 .. v9}, Lcom/ali/user/mobile/service/UserRegisterService;->mobileRegPreVerifyV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    move-result-object v0

    .line 489
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 492
    throw v0
.end method

.method protected doSendSms(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 614
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "doSendSms"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    const-string/jumbo v2, "register"

    invoke-interface {v0, v1, p1, v2}, Lcom/ali/user/mobile/service/UserRegisterService;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v0

    .line 617
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 620
    throw v0
.end method

.method protected getAliuserConifg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->j:Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->j:Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method getCountryCode()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lcom/ali/user/mobile/register/RegionChoice;->getInstance()Lcom/ali/user/mobile/register/RegionChoice;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/ali/user/mobile/register/RegionChoice;->chooseRegion(Landroid/content/Context;Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 271
    throw v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 11
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setMaxEms(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->register_password_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->error_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/ali/user/mobile/security/ui/R$color;->passwor_error_tip0_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->passwor_error_tip_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->alipay_taobao_pro:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->alipay_service_protocol:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->taobao_protocol:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://tms.alicdn.com/go/chn/member/agreement.php"

    const-string/jumbo v4, "https://ab.alipay.com/agreement/contract.htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/ali/user/mobile/security/ui/R$color;->colorLightGray:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v9, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v8, v4}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v4

    const/16 v8, 0x21

    invoke-virtual {v7, v4, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/ali/user/mobile/security/ui/R$color;->linkcolor:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v8, 0x21

    invoke-virtual {v7, v4, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/ali/user/mobile/security/ui/R$color;->colorLightGray:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v7, v4, v1, v6, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/ali/user/mobile/register/TaoUrlSpan;

    invoke-direct {v1, v3}, Lcom/ali/user/mobile/register/TaoUrlSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/ali/user/mobile/register/TaoUrlSpan;->setContext(Landroid/content/Context;)Lcom/ali/user/mobile/register/TaoUrlSpan;

    move-result-object v1

    const/16 v3, 0x21

    invoke-virtual {v7, v1, v6, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ali/user/mobile/security/ui/R$color;->linkcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v7, v1, v6, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0xe

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {v7, v1, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mProtocol:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mProtocol:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mProtocol:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSupportEmoji(Z)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getEtContent()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {v0, v1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->tvCountryAndRegion:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$dimen;->defaultFontSizeSP:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$dimen;->inputbox_specimage_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b()V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v1, v1, Lcom/ali/user/mobile/register/RegistParam;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mTvCountry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v1, v1, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/ali/user/mobile/utils/StringUtil;->getCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v0, v0, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setInputName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string/jumbo v0, "NO"

    const-string/jumbo v1, "CFG_ALIUSER_REGISTERV2_AVATAR_ENABLE"

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getAliuserConifg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const-string/jumbo v0, "NO"

    const-string/jumbo v1, "CFG_ALIUSER_REGISTERV2_NICK_ENABLE"

    invoke-virtual {p0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getAliuserConifg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    :goto_2
    :try_start_0
    const-string/jumbo v0, "NICKNAME_LENGTH_LIMIT"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getAliuserConifg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mScrollView:Lcom/alipay/mobile/commonui/widget/APScrollView;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$12;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$12;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->showInputMethodPannel(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegionLayout:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mBindConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getSpecialFuncImg()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mBindConfirm:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v2}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LoginPage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "NicknameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initTextChange(Landroid/widget/EditText;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v2, "UsernameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "NicknameET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v2, "PwdET"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initFocusChange(Landroid/view/View;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterScrollView:Landroid/view/View;

    const-string/jumbo v2, "RegisterViewContainer"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;->initScreenTouch(Landroid/view/View;Ljava/lang/String;)V

    .line 202
    return-void

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    iget-object v1, v1, Lcom/ali/user/mobile/register/RegistParam;->registAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 342
    const/16 v0, 0x4e20

    if-ne p1, v0, :cond_0

    .line 343
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getCountryCode result, requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-eqz p3, :cond_0

    .line 345
    const-string/jumbo v0, "region"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegionInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    .line 346
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a:Lcom/ali/user/mobile/register/RegionInfo;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Lcom/ali/user/mobile/register/RegionInfo;)V

    .line 349
    :cond_0
    const/16 v0, 0x7530

    if-ne p1, v0, :cond_3

    .line 350
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "choose avatar result, requestCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->i:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->i:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v2, "Aliuser"

    const-string/jumbo v3, "head_img_data"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBase64:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBase64:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "null base64 from EditAvatarActivity"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    const-string/jumbo v1, "Aliuser"

    const-string/jumbo v2, "head_img_bitmap"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBitmap:Landroid/graphics/Bitmap;

    .line 356
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 363
    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, v1

    .line 351
    goto :goto_0

    .line 360
    :cond_5
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "null bitmap from EditAvatarActivity"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 847
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->userAvatar:I

    if-ne v0, v1, :cond_1

    .line 848
    const-string/jumbo v0, "UC-ZC-150512-03"

    const-string/jumbo v1, "zchead"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "AddheadBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 850
    new-instance v0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->avatar_from_album:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->avatar_from_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->show()V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->regionLayout:I

    if-ne v0, v1, :cond_2

    .line 852
    const-string/jumbo v0, "UC-ZC-150512-02"

    const-string/jumbo v1, "zchaiwai"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getCountryCode()V

    goto :goto_0

    .line 854
    :cond_2
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->bindConfirm:I

    if-ne v0, v1, :cond_3

    .line 855
    const-string/jumbo v0, "UC-ZC-150512-06"

    const-string/jumbo v1, "zcnext"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "RegisterBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->closeSafeKeyboard()V

    .line 858
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->showProgress(Ljava/lang/String;)V

    .line 859
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_3
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->specialFuncImgButton:I

    if-ne v0, v1, :cond_0

    .line 861
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    const-string/jumbo v1, "SeePwdBtn"

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/rds/RDSWraper;->onControlClick(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 863
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 864
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_1:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    .line 865
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    .line 866
    const-string/jumbo v0, "UC-ZC-150512-05"

    const-string/jumbo v1, "zcpwdyc"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 869
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPwdInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->eye_2:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->setSepciaFunBtn(I)V

    .line 870
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->getSafeText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setSelection(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 168
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "regist_param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/register/RegistParam;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->c:Lcom/ali/user/mobile/register/RegistParam;

    .line 172
    new-instance v0, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHasNullChecker:Lcom/ali/user/mobile/ui/widget/EditTextHasNullChecker;

    .line 173
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 174
    new-instance v0, Lcom/ali/user/mobile/login/rds/RDSWraper;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "RegisterPage"

    invoke-direct {v0, v1, v2}, Lcom/ali/user/mobile/login/rds/RDSWraper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mRdsWraper:Lcom/ali/user/mobile/login/rds/RDSWraper;

    .line 176
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    .line 179
    const-class v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->i:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 180
    const-class v0, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->j:Lcom/alipay/mobile/base/config/ConfigService;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->h:Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;

    const-string/jumbo v1, "head_img_bitmap"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/ImageMemCacheService;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->i:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->i:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v1, "head_img_data"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    :cond_2
    const-string/jumbo v0, "UC-ZC-150512-01"

    const-string/jumbo v1, "registerpage"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1053
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1054
    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a()V

    .line 1055
    const/4 v0, 0x1

    .line 1057
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->setIntent(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1071
    .line 1072
    if-nez p1, :cond_0

    move v1, v0

    .line 1073
    :goto_0
    array-length v2, p2

    if-lt v1, v2, :cond_1

    .line 1078
    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$13;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$13;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1087
    :cond_0
    return-void

    .line 1074
    :cond_1
    aget v2, p3, v1

    if-eqz v2, :cond_2

    .line 1075
    const/4 v0, -0x1

    .line 1073
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string/jumbo v0, "AliUserRegisterAvatarActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    .line 208
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xbf7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInput:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mLoginPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAlipayNickInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    :cond_0
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 665
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mAppId:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected writeClickLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1062
    const-string/jumbo v1, "register"

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    invoke-static {p1, p2, v1, v0, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1066
    const-string/jumbo v1, "register"

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->g:Ljava/lang/String;

    invoke-static {p1, p2, v1, v0, v2}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
