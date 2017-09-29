.class public Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig;
.super Ljava/lang/Object;
.source "UCDefaultConfig.java"


# static fields
.field public static sSwitchMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig;->sSwitchMap:Ljava/util/Map;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
