.class public Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;
.super Ljava/lang/Object;
.source "CertFileUtil.java"


# static fields
.field public static CERT_FILE:Ljava/lang/String;

.field public static CERT_PATH:Ljava/lang/String;

.field public static lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->lock:Ljava/lang/Object;

    .line 17
    const-string/jumbo v0, "/atls"

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_PATH:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "/public.pem"

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/shared/atls/tools/CertFileUtil;->CERT_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
