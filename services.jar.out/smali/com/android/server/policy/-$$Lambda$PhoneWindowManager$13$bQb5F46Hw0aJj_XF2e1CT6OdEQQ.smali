.class public final synthetic Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/PhoneWindowManager$13;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager$13;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;->f$0:Lcom/android/server/policy/PhoneWindowManager$13;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;->f$0:Lcom/android/server/policy/PhoneWindowManager$13;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$13$bQb5F46Hw0aJj_XF2e1CT6OdEQQ;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$13;->lambda$onDismissSucceeded$0(Lcom/android/server/policy/PhoneWindowManager$13;Z)V

    return-void
.end method
