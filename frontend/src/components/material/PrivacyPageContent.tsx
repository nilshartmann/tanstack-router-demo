import { H1 } from "../Heading";

export default function PrivacyPageContent() {
  return (
    <>
      <H1>Privacy Policy</H1>
      <article className={"space-y-8 font-inter text-gray-600"}>
        <p>
          Your privacy is important to us. It is our policy to respect your
          privacy regarding any information we may collect from you across our
          website.
        </p>

        <p>
          We only ask for personal information when we truly need it to provide
          a service to you. We collect it by fair and lawful means, with your
          knowledge and consent. We also let you know why we’re collecting it
          and how it will be used.
        </p>

        <p>
          We only retain collected information for as long as necessary to
          provide you with your requested service.
        </p>

        <p>
          Your continued use of our website will be regarded as acceptance of
          our practices around privacy and personal information.
        </p>

        <p>
          If you have any questions about how we handle user data and personal
          information, feel free to contact us.
        </p>
      </article>
    </>
  );
}
