.class final Lcom/samsung/android/sdk/pass/SpassFingerprint$a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pass/SpassFingerprint$a;->a:Landroid/os/Bundle;

    return-object v0
.end method
