.class public Lcom/taobao/wswitch/constant/ConfigConstant;
.super Ljava/lang/Object;
.source "ConfigConstant.java"


# static fields
.field public static final BROADCAST_MSG_NOTIFY:Ljava/lang/String; = "com.taobao.taobao.config.update.notify"

.field public static final CDN_URL:Ljava/lang/String; = "http://img%d.tbcdn.cn/tfscom/"

.field public static final CDN_URL_DAILY:Ljava/lang/String; = "http://img%d.daily.taobaocdn.net/tfscom"

.field public static final COMMA_SEPARATOR:Ljava/lang/String; = ","

.field public static final CONFIG_DATA_FIELD:Ljava/lang/String; = "data"

.field public static final CONFIG_EXT_ATTR:Ljava/lang/String; = "extCfgAttrs"

.field public static final CONFIG_KV_VALID_FIELD:Ljava/lang/String; = "kcfgWithTimerMap"

.field public static final CONFIG_TOKEN_FILE:Ljava/lang/String; = "configcontainer_token"

.field public static final CONFIG_TOKEN_KEY:Ljava/lang/String; = "token"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final DEFAULT_CONFIG_VALUE:Ljava/lang/String; = "{}"

.field public static final DEFAULT_FOLDER_PREFIX:Ljava/lang/String; = "wswitch"

.field public static final DEFAULT_FOLDER_PREFIX_V3:Ljava/lang/String; = "wswitch3"

.field public static final GROUP_KEY:Ljava/lang/String; = "g"

.field public static final GROUP_KEY_CUSTOMIZED:Ljava/lang/String; = "group_key"

.field public static final GZIP_DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final HTTP_200_STATUS:I = 0xc8

.field public static final HYPHENS_SEPARATOR:Ljava/lang/String; = "-"

.field public static final LOCAL_CONFIG_CACHE_TIME:Ljava/lang/Long;

.field public static final LOCAL_TOKEN_CACHE_TIME:Ljava/lang/Long;

.field public static final MAX_CONTENT_LENGTH:I = 0x5000

.field public static final MAX_LOOP_RETRY_TIME:I = 0x2

.field public static final MAX_RETRY_TIME:I = 0x1

.field public static final MTOP_CONFIG_TOKEN_CACHE_KEY:Ljava/lang/String; = "l"

.field public static final MTOP_CONFIG_TOKEN_KEY:Ljava/lang/String; = "t"

.field public static final MTOP_RERR_NORESULTS:Ljava/lang/String; = "MC_BIZ_NORESULTS"

.field public static final MTOP_RERR_SEXCEPTION:Ljava/lang/String; = "MC_BIZ_EXCEPTION"

.field public static final MTOP_RERR_UNREGISTER:Ljava/lang/String; = "MC_BIZ_UNREGISTER"

.field public static final MTOP_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final MTOP_RES_CODE_100:I = 0x64

.field public static final MTOP_RES_CODE_200:I = 0xc8

.field public static final MTOP_RES_CODE_400:I = 0x190

.field public static final MTOP_RES_CODE_401:I = 0x191

.field public static final RECEIPT_CDN_FILE_DOWNLOAD_FAILED:Ljava/lang/String; = "CDN_FILE_DOWNLOAD_FAILED"

.field public static final RECEIPT_CDN_FILE_PARSE_FAILED:Ljava/lang/String; = "CDN_FILE_PARSE_FAILED"

.field public static final SLASH_SEPARATOR:Ljava/lang/String; = "/"

.field public static final SYS_STATUS_CALLBACK:I = 0x1

.field public static final SYS_STATUS_DEF_ENCRYPTED:I = 0x2

.field public static final SYS_STATUS_FORCE_UPDATE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ConfigContainer"

.field public static final TBS_AGG1_REFER:Ljava/lang/String; = "SyncReferFromCdn"

.field public static final TBS_ARG1:Ljava/lang/String; = "SyncConfigsFromApi"

.field public static final TBS_ARG1_XCMD:Ljava/lang/String; = "SyncXcommandFromCdn"

.field public static final TBS_EVENTID_FAIL:I = 0x7531

.field public static final TBS_EVENTID_SUCCESS:I = 0x714d

.field public static final TBS_PAGE:Ljava/lang/String; = "Page_ConfigCenter"

.field public static final UNDER_LINE_SEPARATOR:Ljava/lang/String; = "_"

.field public static final URI_KEY:Ljava/lang/String; = "u"

.field public static final VERSION_KEY:Ljava/lang/String; = "v"

.field public static final VERTICAL_LINE:Ljava/lang/String; = "|"

.field public static final XCMD_ACTION_FIELD:Ljava/lang/String; = "f"

.field public static final XCMD_ACTION_UPDATE:Ljava/lang/String; = "u"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide/32 v0, 0x927c0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/taobao/wswitch/constant/ConfigConstant;->LOCAL_CONFIG_CACHE_TIME:Ljava/lang/Long;

    .line 65
    const-wide/32 v0, 0x240c8400

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/taobao/wswitch/constant/ConfigConstant;->LOCAL_TOKEN_CACHE_TIME:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
