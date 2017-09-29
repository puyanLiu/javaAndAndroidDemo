.class public final enum Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

.field public static final enum close:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

.field public static final enum display:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

.field public static final enum open:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

.field public static final enum openRequest:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

.field public static final enum query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    const-string/jumbo v1, "open"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->open:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    const-string/jumbo v1, "close"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->close:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    const-string/jumbo v1, "openRequest"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->openRequest:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    const-string/jumbo v1, "query"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    new-instance v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    const-string/jumbo v1, "display"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->display:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->open:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->close:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->openRequest:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->display:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->a:[Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->a:[Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    return-object v0
.end method
