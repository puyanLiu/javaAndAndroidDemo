.class public Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventType"
.end annotation


# instance fields
.field public a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->b:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 58
    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    .line 59
    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->c:[Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;->c:[Ljava/lang/String;

    return-object v0
.end method
