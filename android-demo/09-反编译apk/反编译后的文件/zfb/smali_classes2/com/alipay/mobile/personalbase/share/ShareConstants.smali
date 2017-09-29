.class public Lcom/alipay/mobile/personalbase/share/ShareConstants;
.super Ljava/lang/Object;
.source "ShareConstants.java"


# static fields
.field public static ACTION_APP_REGISTER:Ljava/lang/String; = null

.field public static ACTION_APP_UNREGISTER:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_APPNAME:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_APP_ICON:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_APP_ID:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_THUMB_URL:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_TITLE:Ljava/lang/String; = null

.field public static EXTRA_BASEREQ_ERROR_CODE:Ljava/lang/String; = null

.field public static EXTRA_BASEREQ_ERROR_STRING:Ljava/lang/String; = null

.field public static EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String; = null

.field public static EXTRA_COMMAND_TYPE:Ljava/lang/String; = null

.field public static EXTRA_FUND_CODE:Ljava/lang/String; = null

.field public static EXTRA_FUND_DAY_INCREASE:Ljava/lang/String; = null

.field public static EXTRA_FUND_IMAGE:Ljava/lang/String; = null

.field public static EXTRA_FUND_PRICE:Ljava/lang/String; = null

.field public static EXTRA_FUND_SUBTXT1:Ljava/lang/String; = null

.field public static EXTRA_FUND_SUBTXT2:Ljava/lang/String; = null

.field public static EXTRA_FUND_TAG:Ljava/lang/String; = null

.field public static EXTRA_FUND_TIME:Ljava/lang/String; = null

.field public static EXTRA_FUND_TITLE:Ljava/lang/String; = null

.field public static EXTRA_FUND_WEEK_INCREASE:Ljava/lang/String; = null

.field public static EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String; = null

.field public static EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String; = null

.field public static EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_CONTENT:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String; = null

.field public static EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_CODE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_NAME:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_PRICE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_PRICE_CHANGE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_PRICE_CHANGE_RATIO:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_STATUS:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_TIME:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_URL:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_CURRENT_PRICE:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_FREE_SHIPPING:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_IMAGE:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_ORI_PRICE:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_TAG1:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_TAG2:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_TITLE:Ljava/lang/String; = null

.field public static EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String; = null

.field public static EXTRA_UI:Ljava/lang/String; = null

.field public static EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String; = null

.field public static PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String; = null

.field public static PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String; = null

.field public static final SDK_VERSION:I = 0x1337966

.field public static SEND_REQUEST_CONTENT_APPID:Ljava/lang/String; = null

.field public static final ZFB_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ZFB_SHARE_ENTRY:Ljava/lang/String; = "com.alipay.mobile.socialwidget.ui.AlipaySdkRegisterActivity"

.field public static final ZFB_TAG:Ljava/lang/String; = "Alipay.SDK."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "alipay_command_type"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_COMMAND_TYPE:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "alipay_basereq_transaction"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "alipay_baseresp_errcode"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_BASEREQ_ERROR_CODE:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "alipay_baseresp_errstr"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_BASEREQ_ERROR_STRING:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "alipay_sendmessag_req_scene"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "ui"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_UI:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "alipay_imageobject_imageData"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "alipay_imageobject_imagePath"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "alipay_imageobject_imageUrl"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "alipay_textobject_text"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "alipay_webpageobject_webpageUrl"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "alipay_stockobject_name"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_NAME:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "alipay_stockobject_code"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_CODE:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "alipay_stockobject_price"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_PRICE:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "alipay_stockobject_price_change"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_PRICE_CHANGE:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "alipay_stockobject_price_change_ratio"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_PRICE_CHANGE_RATIO:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "alipay_stockobject_time"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_TIME:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "alipay_stockobject_status"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_STATUS:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "alipay_stockobject_url"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_STOCK_OBJECT_URL:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "taobao_tag1"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_TAG1:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "taobao_tag2"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_TAG2:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "fund_tag"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_TAG:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "fund_code"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_CODE:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "fund_img"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_IMAGE:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "fund_title"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_TITLE:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "fund_price"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_PRICE:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "fund_subtxt1"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_SUBTXT1:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "fund_subtxt2"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_SUBTXT2:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "fund_day_increase"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_DAY_INCREASE:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "fund_week_increase"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_WEEK_INCREASE:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "fund_time"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_FUND_TIME:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "taobao_title"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_TITLE:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "taobao_img"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_IMAGE:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "taobao_price"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_ORI_PRICE:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "taobao_current_price"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_CURRENT_PRICE:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "taobao_free_shipping"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_FREE_SHIPPING:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "alipay_message_sdkVersion"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "alipay_message_appPackage"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "alipay_message_content"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_CONTENT:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "alipay_message_checksum"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "alipay_object_sdkVer"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "alipay_object_title"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_TITLE:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "alipay_object_description"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "alipay_object_thumb_data"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "alipay_object_identifier"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "alipay_object_app_name"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_APPNAME:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "alipay_object_app_icon"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_APP_ICON:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "alipay_object_app_id"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_APP_ID:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "alipay_object_thumb_url"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_AP_OBJECT_THUMB_URL:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "com.alipay.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "alipays://registerapp?appid="

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->ACTION_APP_REGISTER:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "com.alipay.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "alipays://unregisterapp?appid="

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->ACTION_APP_UNREGISTER:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "alipays://sendreq?appid="

    sput-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->SEND_REQUEST_CONTENT_APPID:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
