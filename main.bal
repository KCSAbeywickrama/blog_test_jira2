import ballerina/log;
import ballerinax/trigger.github;

listener github:Listener gh = new ();

service github:IssuesService on gh {
    remote function onOpened(github:IssuesEvent payload) returns error|() {
        do {
            log:printDebug(payload.toJsonString());
            log:printDebug("gh open");
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onClosed(github:IssuesEvent payload) returns error|() {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onReopened(github:IssuesEvent payload) returns error|() {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onAssigned(github:IssuesEvent payload) returns error|() {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onUnassigned(github:IssuesEvent payload) returns error|() {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onLabeled(github:IssuesEvent payload) returns error|() {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onUnlabeled(github:IssuesEvent payload) returns error|() {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
