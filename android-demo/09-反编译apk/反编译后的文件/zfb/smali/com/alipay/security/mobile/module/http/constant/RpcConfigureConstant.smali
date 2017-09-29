.class public Lcom/alipay/security/mobile/module/http/constant/RpcConfigureConstant;
.super Ljava/lang/Object;


# static fields
.field public static final DAILY_ADDRESS:Ljava/lang/String; = "http://mobilegw.stable.alipay.net/mgw.htm"

.field public static final ONLINE_ADDRESS:Ljava/lang/String; = "https://mobilegw.alipay.com/mgw.htm"

.field public static final PRE_ADDRESS:Ljava/lang/String; = "https://mobilegw.alipay.com/mgw.htm"

.field public static final SIT_ADDRESS:Ljava/lang/String; = "http://mobilegw-1-64.test.alipay.net/mgw.htm"

.field public static final STATIC_DATA_UPDATE_TIMEOUT:I = 0x493e0

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "https://mobilegw.alipay.com/mgw.htm"

    sput-object v0, Lcom/alipay/security/mobile/module/http/constant/RpcConfigureConstant;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGw()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/security/mobile/module/http/constant/RpcConfigureConstant;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static setGw(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alipay/security/mobile/module/http/constant/RpcConfigureConstant;->a:Ljava/lang/String;

    return-void
.end method
