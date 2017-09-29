.class public final Lcom/alipay/android/app/event/IEventArgs$EventScript;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/event/IEventArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventScript"
.end annotation


# instance fields
.field private a:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alipay/android/lib/plusin/script/EventScriptOperation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->a:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    .line 46
    iput-object p2, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->b:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/lib/plusin/script/EventScriptOperation;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->a:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    return-object v0
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alipay/android/lib/plusin/script/EventScriptOperation;->Function:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    iput-object v0, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->a:Lcom/alipay/android/lib/plusin/script/EventScriptOperation;

    .line 63
    iput-object p1, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->c:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/event/IEventArgs$EventScript;->c:[Ljava/lang/Object;

    return-object v0
.end method
