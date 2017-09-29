.class public Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;
.super Ljava/lang/Object;
.source "CurrentCityInfo.java"


# instance fields
.field public adCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->cityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurrentCityInfo;->adCode:Ljava/lang/String;

    .line 12
    return-void
.end method
